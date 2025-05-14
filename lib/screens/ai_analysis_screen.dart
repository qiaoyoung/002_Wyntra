import 'dart:io';
import 'dart:math';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:wyntra/constants/app_colors.dart';
import 'package:image_picker/image_picker.dart';

class AiAnalysisScreen extends StatefulWidget {
  const AiAnalysisScreen({super.key});

  @override
  State<AiAnalysisScreen> createState() => _AiAnalysisScreenState();
}

class _AiAnalysisScreenState extends State<AiAnalysisScreen> with SingleTickerProviderStateMixin {
  File? _selectedImage;
  bool _isAnalyzing = false;
  bool _analysisComplete = false;
  late AnimationController _animationController;
  late Animation<double> _progressAnimation;
  
  // Analysis results
  Map<String, dynamic>? _analysisResults;
  
  // Random generator
  final Random _random = Random();
  
  // Analysis phase
  int _analysisPhase = 0;
  final int _totalPhases = 4;
  
  // Analysis step timer
  Timer? _analysisTimer;
  
  // Control step-by-step loading of analysis results
  bool _showingScores = false;
  bool _showingPhotoInfo = false;
  bool _showingSettings = false;
  bool _showingComposition = false;
  bool _showingLighting = false;
  bool _showingEditing = false;
  
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 8), // Increased to 8 seconds
    )..addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _startResultsReveal();
      }
    });
    
    _progressAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );
  }
  
  @override
  void dispose() {
    _animationController.dispose();
    _analysisTimer?.cancel();
    super.dispose();
  }
  
  // Select image
  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    try {
      final XFile? image = await picker.pickImage(source: ImageSource.gallery);
      
      if (image != null) {
        setState(() {
          _selectedImage = File(image.path);
          _analysisComplete = false;
          _analysisResults = null;
          _resetAnalysisState();
        });
      }
    } catch (e) {
      debugPrint('Error picking image: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Failed to pick image. Please try again.')),
      );
    }
  }
  
  // Reset analysis state
  void _resetAnalysisState() {
    _showingScores = false;
    _showingPhotoInfo = false;
    _showingSettings = false;
    _showingComposition = false;
    _showingLighting = false;
    _showingEditing = false;
    _analysisPhase = 0;
  }
  
  // Start analysis
  void _startAnalysis() {
    setState(() {
      _isAnalyzing = true;
      _analysisComplete = false;
      _resetAnalysisState();
    });
    
    _animationController.reset();
    _animationController.forward();
    
    // Set timer for analysis phases
    _analysisTimer?.cancel();
    _analysisTimer = Timer.periodic(const Duration(seconds: 2), (timer) {
      if (_analysisPhase < _totalPhases) {
        setState(() {
          _analysisPhase++;
        });
      } else {
        timer.cancel();
      }
    });
  }
  
  // Reveal results step by step
  void _startResultsReveal() {
    _generateAnalysisResults();
    
    setState(() {
      _isAnalyzing = false;
      _analysisComplete = true;
      _showingScores = true;
    });
    
    // Simulate step-by-step loading of analysis results
    Future.delayed(const Duration(milliseconds: 800), () {
      if (mounted) {
        setState(() {
          _showingPhotoInfo = true;
        });
      }
    });
    
    Future.delayed(const Duration(milliseconds: 1600), () {
      if (mounted) {
        setState(() {
          _showingSettings = true;
        });
      }
    });
    
    Future.delayed(const Duration(milliseconds: 2200), () {
      if (mounted) {
        setState(() {
          _showingComposition = true;
        });
      }
    });
    
    Future.delayed(const Duration(milliseconds: 2700), () {
      if (mounted) {
        setState(() {
          _showingLighting = true;
        });
      }
    });
    
    Future.delayed(const Duration(milliseconds: 3100), () {
      if (mounted) {
        setState(() {
          _showingEditing = true;
        });
      }
    });
  }
  
  // Generate random analysis results
  void _generateAnalysisResults() {
    // Camera model list
    final List<String> cameraModels = [
      'Canon EOS R6', 'Sony Alpha A7 III', 'Nikon Z7 II', 
      'Fujifilm X-T4', 'Leica Q2', 'iPhone 15 Pro Max',
      'Google Pixel 8 Pro', 'Samsung Galaxy S24 Ultra'
    ];
    
    // Lens list
    final List<String> lenses = [
      '24-70mm f/2.8', '50mm f/1.4', '85mm f/1.8', 
      '16-35mm f/4', '70-200mm f/2.8', '35mm f/1.8',
      '100mm f/2.8 Macro', '14mm f/2.8 Ultra-Wide'
    ];
    
    // Aperture suggestions
    final List<String> apertures = [
      'f/1.8', 'f/2.8', 'f/4', 'f/5.6', 'f/8', 'f/11', 'f/16'
    ];
    
    // Shutter speed suggestions
    final List<String> shutterSpeeds = [
      '1/30s', '1/60s', '1/125s', '1/250s', '1/500s', '1/1000s', '1/2000s'
    ];
    
    // ISO suggestions
    final List<String> isoValues = [
      '100', '200', '400', '800', '1600', '3200'
    ];
    
    // Photo types
    final List<String> photoTypes = [
      'Portrait', 'Landscape', 'Street', 'Macro', 'Wildlife', 
      'Architecture', 'Night', 'Travel', 'Food', 'Sports', 'Black & White'
    ];
    
    // Composition tips
    final List<String> compositionTips = [
      'Try using rule of thirds for better balance',
      'Consider using leading lines to draw attention',
      'Create depth by including foreground elements',
      'Frame your subject with natural elements',
      'Use symmetry to create a striking composition',
      'Try a lower angle to create more drama',
      'Consider negative space to highlight your subject',
      'Experiment with diagonal composition for dynamic feel',
      'Use repeating elements to create visual rhythm',
      'Try central composition to emphasize important subjects'
    ];
    
    // Lighting tips
    final List<String> lightingTips = [
      'Shoot during golden hour for warm, flattering light',
      'Try backlight for dramatic silhouettes',
      'Use side lighting to create texture and depth',
      'Diffuse harsh sunlight with a reflector',
      'Consider adding a subtle fill light for portraits',
      'Experiment with rim lighting to create separation',
      'Look for pockets of light in shadowy scenes',
      'Try split lighting for dramatic portraits',
      'Pay attention to highlight and shadow contrast in the scene',
      'Consider adding diffused light sources to improve overall lighting'
    ];
    
    // Editing tips
    final List<String> editingTips = [
      'Slightly increase contrast to make the image pop',
      'Consider a warmer white balance for more inviting feel',
      'Try subtle vignetting to direct focus to the center',
      'Adjust highlights and shadows to recover details',
      'Consider a slight clarity boost to enhance textures',
      'Try selective color adjustments to create mood',
      'Experiment with graduated filters for landscape shots',
      'Consider subtle split toning for artistic effect',
      'Try local adjustments to enhance subject expression',
      'Consider color grading to unify the overall tone'
    ];
    
    // Simulate random fluctuations in AI analysis
    final randomOffset = _random.nextInt(6) - 2; // Random offset from -2 to 3
    
    // Information "detected" from the photo
    // To simulate realism, make analysis results appear more connected
    final selectedPhotoType = photoTypes[_random.nextInt(photoTypes.length)];
    
    // Choose recommended settings based on photo type
    String recommendedAperture;
    String recommendedShutter;
    String recommendedIso;
    
    // Recommend different settings based on photo type
    switch(selectedPhotoType) {
      case 'Portrait':
        recommendedAperture = ['f/1.8', 'f/2.8', 'f/4'][_random.nextInt(3)];
        recommendedShutter = ['1/125s', '1/250s'][_random.nextInt(2)];
        recommendedIso = ['100', '200', '400'][_random.nextInt(3)];
        break;
      case 'Landscape':
        recommendedAperture = ['f/8', 'f/11', 'f/16'][_random.nextInt(3)];
        recommendedShutter = ['1/125s', '1/250s', '1/60s'][_random.nextInt(3)];
        recommendedIso = ['100', '200'][_random.nextInt(2)];
        break;
      case 'Night':
        recommendedAperture = ['f/2.8', 'f/4', 'f/5.6'][_random.nextInt(3)];
        recommendedShutter = ['1/30s', '1/60s'][_random.nextInt(2)];
        recommendedIso = ['1600', '3200'][_random.nextInt(2)];
        break;
      case 'Sports':
        recommendedAperture = ['f/2.8', 'f/4'][_random.nextInt(2)];
        recommendedShutter = ['1/500s', '1/1000s', '1/2000s'][_random.nextInt(3)];
        recommendedIso = ['400', '800', '1600'][_random.nextInt(3)];
        break;
      default:
        recommendedAperture = apertures[_random.nextInt(apertures.length)];
        recommendedShutter = shutterSpeeds[_random.nextInt(shutterSpeeds.length)];
        recommendedIso = isoValues[_random.nextInt(isoValues.length)];
    }
    
    // Base score - make score fluctuations more realistic
    final baseScore = 70 + _random.nextInt(21); // Base score between 70-90
    
    // Generate random analysis results
    _analysisResults = {
      'detectedCamera': cameraModels[_random.nextInt(cameraModels.length)],
      'recommendedLens': lenses[_random.nextInt(lenses.length)],
      'photoType': selectedPhotoType,
      'settings': {
        'aperture': recommendedAperture,
        'shutter': recommendedShutter,
        'iso': recommendedIso,
      },
      'composition': compositionTips[_random.nextInt(compositionTips.length)],
      'lighting': lightingTips[_random.nextInt(lightingTips.length)],
      'editing': editingTips[_random.nextInt(editingTips.length)],
      'score': {
        'overall': baseScore + randomOffset,
        'composition': baseScore + _random.nextInt(11) - 5, // Base ±5
        'lighting': baseScore + _random.nextInt(11) - 5,
        'subject': baseScore + _random.nextInt(11) - 5,
        'technical': baseScore + _random.nextInt(11) - 5,
      }
    };
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'AI Photo Analysis',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.primary,
          ),
        ),
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: _selectedImage == null ? _buildUploadSection() : _buildAnalysisSection(),
    );
  }
  
  Widget _buildUploadSection() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 180,
            height: 180,
            decoration: BoxDecoration(
              color: AppColors.primary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(
              Icons.auto_awesome,
              size: 80,
              color: AppColors.primary.withOpacity(0.7),
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            'AI Photo Analysis',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              'Upload a photo to get AI-powered insights and suggestions to improve your photography',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey.shade600,
              ),
            ),
          ),
          const SizedBox(height: 40),
          ElevatedButton.icon(
            onPressed: _pickImage,
            icon: const Icon(Icons.cloud_upload),
            label: const Text('Upload Photo'),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }
  
  Widget _buildAnalysisSection() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image preview
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.file(
              _selectedImage!,
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 16),
          
          // Analysis button or progress
          if (_isAnalyzing) _buildAnalyzingProgress()
          else if (!_analysisComplete) _buildAnalyzeButton()
          else _buildAnalysisResults(),
          
          const SizedBox(height: 24),
          
          // Upload another button
          if (_selectedImage != null)
            Center(
              child: TextButton.icon(
                onPressed: _pickImage,
                icon: const Icon(Icons.refresh),
                label: const Text('Upload Another Photo'),
              ),
            ),
        ],
      ),
    );
  }
  
  Widget _buildAnalyzeButton() {
    return Center(
      child: ElevatedButton.icon(
        onPressed: _startAnalysis,
        icon: const Icon(Icons.auto_awesome),
        label: const Text('Analyze Photo'),
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    );
  }
  
  Widget _buildAnalyzingProgress() {
    return Column(
      children: [
        const SizedBox(height: 8),
        const Text(
          'Analyzing your photo...',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        AnimatedBuilder(
          animation: _progressAnimation,
          builder: (context, child) {
            return Column(
              children: [
                LinearProgressIndicator(
                  value: _progressAnimation.value,
                  backgroundColor: Colors.grey.shade200,
                  color: AppColors.primary,
                  minHeight: 8,
                  borderRadius: BorderRadius.circular(8),
                ),
                const SizedBox(height: 8),
                Text(
                  '${(_progressAnimation.value * 100).toInt()}%',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                _buildAnalysisSteps(),
              ],
            );
          },
        ),
      ],
    );
  }
  
  Widget _buildAnalysisSteps() {
    final steps = [
      'Loading image data...',
      'Applying image recognition model...',
      'Detecting scene elements and equipment...',
      'Analyzing composition and subject...',
      'Evaluating lighting conditions...',
      'Identifying potential technical issues...',
      'Generating technical recommendations...',
      'Optimizing photography parameters...',
    ];
    
    // Calculate current active step index
    int currentStep;
    if (_progressAnimation.value < 0.15) {
      currentStep = 0;
    } else if (_progressAnimation.value < 0.3) {
      currentStep = 1;
    } else if (_progressAnimation.value < 0.45) {
      currentStep = 2;
    } else if (_progressAnimation.value < 0.55) {
      currentStep = 3;
    } else if (_progressAnimation.value < 0.65) {
      currentStep = 4;
    } else if (_progressAnimation.value < 0.75) {
      currentStep = 5;
    } else if (_progressAnimation.value < 0.85) {
      currentStep = 6;
    } else {
      currentStep = 7;
    }
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(steps.length, (index) {
        final isCompleted = index < currentStep;
        final isCurrent = index == currentStep;
        
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Row(
            children: [
              Icon(
                isCompleted ? Icons.check_circle : (isCurrent ? Icons.timelapse : Icons.circle_outlined),
                color: isCompleted 
                    ? Colors.green 
                    : (isCurrent ? AppColors.primary : Colors.grey),
                size: 16,
              ),
              const SizedBox(width: 8),
              Text(
                steps[index],
                style: TextStyle(
                  color: isCompleted 
                      ? Colors.green 
                      : (isCurrent ? AppColors.primary : Colors.grey),
                  fontWeight: isCurrent ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
  
  Widget _buildAnalysisResults() {
    if (_analysisResults == null) return const SizedBox.shrink();
    
    final results = _analysisResults!;
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Analysis Results',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: AppColors.textPrimary,
          ),
        ),
        const SizedBox(height: 8),
        const Divider(),
        
        // Overall score - with animation
        if (_showingScores) 
          AnimatedOpacity(
            opacity: _showingScores ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 500),
            child: _buildScoreSection(results['score']),
          )
        else
          const SizedBox(height: 100, child: Center(child: CircularProgressIndicator())),
        
        const Divider(),
        
        // Photo type and equipment
        if (_showingPhotoInfo)
          AnimatedOpacity(
            opacity: _showingPhotoInfo ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 500),
            child: Column(
              children: [
                // Photo type
                _buildInfoRow(
                  'Photo Type', 
                  results['photoType'], 
                  Icons.photo_camera
                ),
                
                // Detected camera
                _buildInfoRow(
                  'Detected Equipment',
                  '${results['detectedCamera']} with ${results['recommendedLens']}',
                  Icons.camera_alt
                ),
              ],
            ),
          ),
        
        const SizedBox(height: 24),
        
        // Recommended settings
        if (_showingSettings)
          AnimatedOpacity(
            opacity: _showingSettings ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 500),
            child: _buildRecommendationSection(
              'Recommended Settings',
              Icons.settings,
              [
                'Aperture: ${results['settings']['aperture']}',
                'Shutter Speed: ${results['settings']['shutter']}',
                'ISO: ${results['settings']['iso']}',
              ],
            ),
          ),
        
        // Composition tips
        if (_showingComposition)
          AnimatedOpacity(
            opacity: _showingComposition ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 500),
            child: _buildRecommendationSection(
              'Composition',
              Icons.crop,
              [results['composition']],
            ),
          ),
        
        // Lighting tips
        if (_showingLighting)
          AnimatedOpacity(
            opacity: _showingLighting ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 500),
            child: _buildRecommendationSection(
              'Lighting',
              Icons.wb_sunny,
              [results['lighting']],
            ),
          ),
        
        // Editing suggestions
        if (_showingEditing)
          AnimatedOpacity(
            opacity: _showingEditing ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 500),
            child: _buildRecommendationSection(
              'Editing Suggestion',
              Icons.tune,
              [results['editing']],
            ),
          ),
          
        // If not all results are loaded yet, show loading indicator
        if (_analysisComplete && 
            (!_showingScores || !_showingPhotoInfo || !_showingSettings || 
             !_showingComposition || !_showingLighting || !_showingEditing))
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    width: 24, 
                    height: 24, 
                    child: CircularProgressIndicator(strokeWidth: 2)
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Generating more analysis results...',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
  
  Widget _buildScoreSection(Map<String, dynamic> scores) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Photo Rating',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          
          // Overall score
          Row(
            children: [
              CircleAvatar(
                radius: 32,
                backgroundColor: AppColors.primary,
                child: Text(
                  '${scores['overall']}',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(width: 16),
              const Expanded(
                child: Text(
                  'Overall Score',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          
          const SizedBox(height: 20),
          
          // Detailed scores
          Wrap(
            spacing: 16,
            runSpacing: 16,
            children: [
              _buildScoreItem('Composition', scores['composition']),
              _buildScoreItem('Lighting', scores['lighting']),
              _buildScoreItem('Subject', scores['subject']),
              _buildScoreItem('Technical', scores['technical']),
            ],
          ),
        ],
      ),
    );
  }
  
  Widget _buildScoreItem(String label, int score) {
    return Container(
      width: MediaQuery.of(context).size.width / 2 - 24,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.primary.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey.shade700,
            ),
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Text(
                '$score',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: LinearProgressIndicator(
                  value: score / 100,
                  backgroundColor: Colors.grey.shade200,
                  color: AppColors.primary,
                  minHeight: 6,
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
  
  Widget _buildInfoRow(String label, String value, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: AppColors.primary.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: AppColors.primary,
              size: 16,
            ),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey.shade600,
                ),
              ),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
  
  Widget _buildRecommendationSection(String title, IconData icon, List<String> tips) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: AppColors.primary.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  icon,
                  color: AppColors.primary,
                  size: 18,
                ),
              ),
              const SizedBox(width: 12),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          ...tips.map((tip) => Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  Icons.arrow_right,
                  color: AppColors.primary,
                  size: 20,
                ),
                Expanded(
                  child: Text(
                    tip,
                    style: const TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
          )).toList(),
        ],
      ),
    );
  }
}