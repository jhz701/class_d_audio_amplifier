# Class-D Audio Amplifier
## Overview

This project is intended to implement a closed-loop class-d audio amplifier with 1.8 V power supply to drive a 8 ohm speaker.

## Introduction

An audio amplifier is a circuit used to reproduce input audio signals at sound-producing output elements. Class-D audio amplifier uses a CMOS switch as the output load driver which theoretically consumes no static power and transmits all dynamic power to the load. Thus, the Class-D audio amplifier can achieve high power efficiency.

A Class-D audio amplifier is proposed in this project, which is designed with SkyWater Open PDK for the 130nm process. The overall structure of the audio amplifier is shown below. The output is in full-bridge configuration to provide more power to the load and cancel the even harmonics. A negative feedback loop is used to improve the linearity and PSRR. The error signal at the integrator output is compared with a 500 kHz triangular wave to produce the PWM signal, which will be buffered to drive the output switch. A non-overlapping generator is added to prevent the shoot through current. The switching output is filtered with a LC lowpass filter. 
<img src="https://github.com/jhz701/class_d_audio_amplifier/blob/main/class-d.png" width="1500" height="500" alt=""/>

## Schematic
<img src="https://github.com/jhz701/class_d_audio_amplifier/blob/main/Class_d_sch.png" width="1500" height="500" alt=""/>
## Layout
<img src="https://github.com/jhz701/class_d_audio_amplifier/blob/main/Class_d_ly.png" width="1500" height="500" alt=""/>
