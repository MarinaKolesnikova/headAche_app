import 'package:flutter/material.dart';
import 'package:migr_proj/presentation/shared/mixins/animation_mixin.dart';

abstract class AnimationState<T extends StatefulWidget> extends State<T> with AnimationMixin, TickerProviderStateMixin {}
