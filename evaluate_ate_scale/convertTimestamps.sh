#!/bin/bash

# Convert the timestamps of the ground truth files to the format required by the evaluation script
python3 convertGroundTruthTimestamp.py ./GroundTruths/eee_01_ground_truth.txt ./convertedGroundTruths/eee_01_ground_truth.txt
python3 convertGroundTruthTimestamp.py ./GroundTruths/eee_02_ground_truth.txt ./convertedGroundTruths/eee_02_ground_truth.txt
python3 convertGroundTruthTimestamp.py ./GroundTruths/eee_03_ground_truth.txt ./convertedGroundTruths/eee_03_ground_truth.txt
python3 convertGroundTruthTimestamp.py ./GroundTruths/nya_01_ground_truth.txt ./convertedGroundTruths/nya_01_ground_truth.txt
python3 convertGroundTruthTimestamp.py ./GroundTruths/nya_02_ground_truth.txt ./convertedGroundTruths/nya_02_ground_truth.txt
python3 convertGroundTruthTimestamp.py ./GroundTruths/nya_03_ground_truth.txt ./convertedGroundTruths/nya_03_ground_truth.txt
python3 convertGroundTruthTimestamp.py ./GroundTruths/sbs_02_ground_truth.txt ./convertedGroundTruths/sbs_02_ground_truth.txt

offsets=(1609059013.11464 1609059607.31546 1609060334.7557 1609043642.05492 1609045331.12691 1609046839.92535 1609055134.16055)

# Convert the timestamps of the KeyFrameTrajectory files to the format required by the evaluation script
python3 convertTrajectoryTimestamp.py ./Trajectories/eee_01_KeyFrameTrajectory.txt ./convertedTrajectories/eee_01_KeyFrameTrajectory.txt ${offsets[0]}
python3 convertTrajectoryTimestamp.py ./Trajectories/eee_02_1000Features_KeyFrameTrajectory.txt ./convertedTrajectories/eee_02_1000Features_KeyFrameTrajectory.txt ${offsets[1]}
python3 convertTrajectoryTimestamp.py ./Trajectories/eee_02_1300Features_KeyFrameTrajectory.txt ./convertedTrajectories/eee_02_1300Features_KeyFrameTrajectory.txt ${offsets[1]}
python3 convertTrajectoryTimestamp.py ./Trajectories/eee_03_1000Features_KeyFrameTrajectory.txt ./convertedTrajectories/eee_03_1000Features_KeyFrameTrajectory.txt ${offsets[2]}
python3 convertTrajectoryTimestamp.py ./Trajectories/eee_03_1300Features_KeyFrameTrajectory.txt ./convertedTrajectories/eee_03_1300Features_KeyFrameTrajectory.txt ${offsets[2]}
python3 convertTrajectoryTimestamp.py ./Trajectories/nya_01_KeyFrameTrajectory.txt ./convertedTrajectories/nya_01_KeyFrameTrajectory.txt ${offsets[3]}
python3 convertTrajectoryTimestamp.py ./Trajectories/nya_02_KeyFrameTrajectory.txt ./convertedTrajectories/nya_02_KeyFrameTrajectory.txt ${offsets[4]}
python3 convertTrajectoryTimestamp.py ./Trajectories/nya_03_KeyFrameTrajectory.txt ./convertedTrajectories/nya_03_KeyFrameTrajectory.txt ${offsets[5]}
python3 convertTrajectoryTimestamp.py ./Trajectories/sbs_02_KeyFrameTrajectory.txt ./convertedTrajectories/sbs_02_KeyFrameTrajectory.txt ${offsets[6]}

# python3 evaluate_ate_scale.py ./convertedGroundTruths/eee_01_ground_truth.txt ./convertedTrajectories/eee_01_KeyFrameTrajectory.txt --plot ./Plots/eee_01
# python3 evaluate_ate_scale.py ./convertedGroundTruths/eee_02_ground_truth.txt ./convertedTrajectories/eee_02_1000Features_KeyFrameTrajectory.txt --plot ./Plots/eee_02_1000Features
# python3 evaluate_ate_scale.py ./convertedGroundTruths/eee_02_ground_truth.txt ./convertedTrajectories/eee_02_1300Features_KeyFrameTrajectory.txt --plot ./Plots/eee_02_1300Features
# python3 evaluate_ate_scale.py ./convertedGroundTruths/eee_03_ground_truth.txt ./convertedTrajectories/eee_03_1000Features_KeyFrameTrajectory.txt --plot ./Plots/eee_03_1000Features
# python3 evaluate_ate_scale.py ./convertedGroundTruths/eee_03_ground_truth.txt ./convertedTrajectories/eee_03_1300Features_KeyFrameTrajectory.txt --plot ./Plots/eee_03_1300Features
# python3 evaluate_ate_scale.py ./convertedGroundTruths/nya_01_ground_truth.txt ./convertedTrajectories/nya_01_KeyFrameTrajectory.txt --plot ./Plots/nya_01
# python3 evaluate_ate_scale.py ./convertedGroundTruths/nya_02_ground_truth.txt ./convertedTrajectories/nya_02_KeyFrameTrajectory.txt --plot ./Plots/nya_02
# python3 evaluate_ate_scale.py ./convertedGroundTruths/nya_03_ground_truth.txt ./convertedTrajectories/nya_03_KeyFrameTrajectory.txt --plot ./Plots/nya_03
# python3 evaluate_ate_scale.py ./convertedGroundTruths/sbs_02_ground_truth.txt ./convertedTrajectories/sbs_02_KeyFrameTrajectory.txt --plot ./Plots/sbs_02