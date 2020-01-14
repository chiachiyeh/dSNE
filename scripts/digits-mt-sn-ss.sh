#!/usr/bin/env bash
# no augmentation
# src + target
python main_ssda.py --method mts --src SN --tgt MT --bb lenetplus --bs 256 --resize 32 --size 32 --postfix s-no-aug-b50-0 --lr 0.01 --end-epoch 50 --rampup-epoch 100 --log-itv 0 --cfg cfg/digits-a.json --hybridize --nc 10 --dropout --train-src --beta 50
python main_ssda.py --method mts --src SN --tgt MT --bb lenetplus --bs 256 --resize 32 --size 32 --postfix s-no-aug-b50-1 --lr 0.01 --end-epoch 50 --rampup-epoch 100 --log-itv 0 --cfg cfg/digits-a.json --hybridize --nc 10 --dropout --train-src --beta 50
python main_ssda.py --method mts --src SN --tgt MT --bb lenetplus --bs 256 --resize 32 --size 32 --postfix s-no-aug-b50-2 --lr 0.01 --end-epoch 50 --rampup-epoch 100 --log-itv 0 --cfg cfg/digits-a.json --hybridize --nc 10 --dropout --train-src --beta 50
# 100 target + target
python main_ssda.py --method mtt --src SN --tgt MT --bb lenetplus --bs 256 --resize 32 --size 32 --postfix t-no-aug-b50-0 --lr 0.01 --end-epoch 50 --rampup-epoch 100 --log-itv 0 --cfg cfg/digits-a.json --hybridize --nc 10 --dropout --beta 50
python main_ssda.py --method mtt --src SN --tgt MT --bb lenetplus --bs 256 --resize 32 --size 32 --postfix t-no-aug-b50-1 --lr 0.01 --end-epoch 50 --rampup-epoch 100 --log-itv 0 --cfg cfg/digits-a.json --hybridize --nc 10 --dropout --beta 50
python main_ssda.py --method mtt --src SN --tgt MT --bb lenetplus --bs 256 --resize 32 --size 32 --postfix t-no-aug-b50-2 --lr 0.01 --end-epoch 50 --rampup-epoch 100 --log-itv 0 --cfg cfg/digits-a.json --hybridize --nc 10 --dropout --beta 50
# src + 100 target + target
python main_ssda.py --method mtt --src SN --tgt MT --bb lenetplus --bs 256 --resize 32 --size 32 --postfix st-no-aug-b50-0 --lr 0.01 --end-epoch 50 --rampup-epoch 100 --log-itv 0 --cfg cfg/digits-a.json --hybridize --nc 10 --dropout --train-src --beta 50
python main_ssda.py --method mtt --src SN --tgt MT --bb lenetplus --bs 256 --resize 32 --size 32 --postfix st-no-aug-b50-1 --lr 0.01 --end-epoch 50 --rampup-epoch 100 --log-itv 0 --cfg cfg/digits-a.json --hybridize --nc 10 --dropout --train-src --beta 50
python main_ssda.py --method mtt --src SN --tgt MT --bb lenetplus --bs 256 --resize 32 --size 32 --postfix st-no-aug-b50-2 --lr 0.01 --end-epoch 50 --rampup-epoch 100 --log-itv 0 --cfg cfg/digits-a.json --hybridize --nc 10 --dropout --train-src --beta 50
# dsnet
python main_ssda.py --method mtd --cfg cfg/digits-a.json --src SN --tgt MT --bb lenetplus --bs 256 --resize 32 --size 32 --model-path DSNET/lenetplus-no-aug-acc=96.62.params --rampup-epoch 1 --lr 0.01 --end-epoch 50 --log-itv 0 --nc 10 --dropout --beta 50 --train-src --postfix st-no-aug-0
python main_ssda.py --method mtd --cfg cfg/digits-a.json --src SN --tgt MT --bb lenetplus --bs 256 --resize 32 --size 32 --model-path DSNET/lenetplus-no-aug-acc=96.62.params --rampup-epoch 1 --lr 0.01 --end-epoch 50 --log-itv 0 --nc 10 --dropout --beta 50 --train-src --postfix st-no-aug-1
python main_ssda.py --method mtd --cfg cfg/digits-a.json --src SN --tgt MT --bb lenetplus --bs 256 --resize 32 --size 32 --model-path DSNET/lenetplus-no-aug-acc=96.62.params --rampup-epoch 1 --lr 0.01 --end-epoch 50 --log-itv 0 --nc 10 --dropout --beta 50 --train-src --postfix st-no-aug-2

# augmentation
# src + target
python main_ssda.py --method mts --src SN --tgt MT --bb lenetplus --bs 256 --resize 36 --size 32 --postfix s-inn-crop-b50-0 --lr 0.01 --end-epoch 50 --rampup-epoch 100 --log-itv 0 --cfg cfg/digits-a.json --hybridize --nc 10 --dropout --train-src --beta 50 --inn --random-crop
python main_ssda.py --method mts --src SN --tgt MT --bb lenetplus --bs 256 --resize 36 --size 32 --postfix s-inn-crop-b50-1 --lr 0.01 --end-epoch 50 --rampup-epoch 100 --log-itv 0 --cfg cfg/digits-a.json --hybridize --nc 10 --dropout --train-src --beta 50 --inn --random-crop
python main_ssda.py --method mts --src SN --tgt MT --bb lenetplus --bs 256 --resize 36 --size 32 --postfix s-inn-crop-b50-2 --lr 0.01 --end-epoch 50 --rampup-epoch 100 --log-itv 0 --cfg cfg/digits-a.json --hybridize --nc 10 --dropout --train-src --beta 50 --inn --random-crop
# 100 target + target
python main_ssda.py --method mtt --src SN --tgt MT --bb lenetplus --bs 256 --resize 36 --size 32 --postfix t-inn-crop-b50-0 --lr 0.01 --end-epoch 50 --rampup-epoch 100 --log-itv 0 --cfg cfg/digits-a.json --hybridize --nc 10 --dropout --beta 50 --inn --random-crop
python main_ssda.py --method mtt --src SN --tgt MT --bb lenetplus --bs 256 --resize 36 --size 32 --postfix t-inn-crop-b50-1 --lr 0.01 --end-epoch 50 --rampup-epoch 100 --log-itv 0 --cfg cfg/digits-a.json --hybridize --nc 10 --dropout --beta 50 --inn --random-crop
python main_ssda.py --method mtt --src SN --tgt MT --bb lenetplus --bs 256 --resize 36 --size 32 --postfix t-inn-crop-b50-2 --lr 0.01 --end-epoch 50 --rampup-epoch 100 --log-itv 0 --cfg cfg/digits-a.json --hybridize --nc 10 --dropout --beta 50 --inn --random-crop
# src + 100 target + target
python main_ssda.py --method mtt --src SN --tgt MT --bb lenetplus --bs 256 --resize 36 --size 32 --postfix st-inn-crop-b50-0 --lr 0.01 --end-epoch 50 --log-itv 0 --rampup-epoch 100 --cfg cfg/digits-a.json --hybridize --nc 10 --dropout --train-src --beta 50 --inn --random-crop
python main_ssda.py --method mtt --src SN --tgt MT --bb lenetplus --bs 256 --resize 36 --size 32 --postfix st-inn-crop-b50-1 --lr 0.01 --end-epoch 50 --log-itv 0 --rampup-epoch 100 --cfg cfg/digits-a.json --hybridize --nc 10 --dropout --train-src --beta 50 --inn --random-crop
python main_ssda.py --method mtt --src SN --tgt MT --bb lenetplus --bs 256 --resize 36 --size 32 --postfix st-inn-crop-b50-2 --lr 0.01 --end-epoch 50 --log-itv 0 --rampup-epoch 100 --cfg cfg/digits-a.json --hybridize --nc 10 --dropout --train-src --beta 50 --inn --random-crop
# dsnet
# python main_ssda.py --method mtd --cfg cfg/digits-a.json --src SN --tgt MT --bb lenetplus --bs 256 --resize 36 --size 32 --model-path DSNET/lenetplus-no-aug-acc=96.62.params --rampup-epoch 1 --lr 0.01 --end-epoch 50 --log-itv 0 --nc 10 --dropout --beta 50 --inn --random-drop --train-src --postfix st-inn-crop-0
# python main_ssda.py --method mtd --cfg cfg/digits-a.json --src SN --tgt MT --bb lenetplus --bs 256 --resize 36 --size 32 --model-path DSNET/lenetplus-no-aug-acc=96.62.params --rampup-epoch 1 --lr 0.01 --end-epoch 50 --log-itv 0 --nc 10 --dropout --beta 50 --inn --random-drop --train-src --postfix st-inn-crop-1
# python main_ssda.py --method mtd --cfg cfg/digits-a.json --src SN --tgt MT --bb lenetplus --bs 256 --resize 36 --size 32 --model-path DSNET/lenetplus-no-aug-acc=96.62.params --rampup-epoch 1 --lr 0.01 --end-epoch 50 --log-itv 0 --nc 10 --dropout --beta 50 --inn --random-drop --train-src --postfix st-inn-crop-2

# no augmentation
# src + target
#python main_ssda.py --method mts --src MT --tgt SN --bb lenetplus --bs 256 --resize 32 --size 32 --postfix s-no-aug-b50-0 --lr 0.01 --end-epoch 50 --log-itv 0 --cfg cfg/digits-a.json --hybridize --nc 10 --dropout --train-src --beta 50
# python main_ssda.py --method mts --src MT --tgt SN --bb lenetplus --bs 256 --resize 32 --size 32 --postfix s-no-aug-b50-1 --lr 0.01 --end-epoch 50 --log-itv 0 --cfg cfg/digits-a.json --hybridize --nc 10 --dropout --train-src --beta 50
# python main_ssda.py --method mts --src MT --tgt SN --bb lenetplus --bs 256 --resize 32 --size 32 --postfix s-no-aug-b50-2 --lr 0.01 --end-epoch 50 --log-itv 0 --cfg cfg/digits-a.json --hybridize --nc 10 --dropout --train-src --beta 50
# 100 target + target
# python main_ssda.py --method mtt --src MT --tgt SN --bb lenetplus --bs 256 --resize 32 --size 32 --postfix t-no-aug-b50-0 --lr 0.01 --end-epoch 50 --log-itv 0 --cfg cfg/digits-a.json --hybridize --nc 10 --dropout --beta 50
# python main_ssda.py --method mtt --src MT --tgt SN --bb lenetplus --bs 256 --resize 32 --size 32 --postfix t-no-aug-b50-1 --lr 0.01 --end-epoch 50 --log-itv 0 --cfg cfg/digits-a.json --hybridize --nc 10 --dropout --beta 50
# python main_ssda.py --method mtt --src MT --tgt SN --bb lenetplus --bs 256 --resize 32 --size 32 --postfix t-no-aug-b50-2 --lr 0.01 --end-epoch 50 --log-itv 0 --cfg cfg/digits-a.json --hybridize --nc 10 --dropout --beta 50
# src + 100 target + target
# python main_ssda.py --method mtt --src MT --tgt SN --bb lenetplus --bs 256 --resize 32 --size 32 --postfix st-no-aug-b50-0 --lr 0.01 --end-epoch 5 --log-itv 0 --cfg cfg/digits-a.json --hybridize --nc 10 --dropout --train-src --beta 50
# python main_ssda.py --method mtt --src MT --tgt SN --bb lenetplus --bs 256 --resize 32 --size 32 --postfix st-no-aug-b50-1 --lr 0.01 --end-epoch 5 --log-itv 0 --cfg cfg/digits-a.json --hybridize --nc 10 --dropout --train-src --beta 50
# python main_ssda.py --method mtt --src MT --tgt SN --bb lenetplus --bs 256 --resize 32 --size 32 --postfix st-no-aug-b50-2 --lr 0.01 --end-epoch 5 --log-itv 0 --cfg cfg/digits-a.json --hybridize --nc 10 --dropout --train-src --beta 50
# dsnet
python main_ssda.py --method mtd --cfg cfg/digits-a.json --src MT --tgt SN --bb lenetplus --bs 256 --resize 32 --size 32 --model-path DSNET/lenetplus-no-aug-acc=50.78.params --rampup-epoch 10 --lr 0.01 --end-epoch 50 --log-itv 0 --nc 10 --dropout --beta 50 --train-src --postfix st-no-aug-0
python main_ssda.py --method mtd --cfg cfg/digits-a.json --src MT --tgt SN --bb lenetplus --bs 256 --resize 32 --size 32 --model-path DSNET/lenetplus-no-aug-acc=50.78.params --rampup-epoch 10 --lr 0.01 --end-epoch 50 --log-itv 0 --nc 10 --dropout --beta 50 --train-src --postfix st-no-aug-1
python main_ssda.py --method mtd --cfg cfg/digits-a.json --src MT --tgt SN --bb lenetplus --bs 256 --resize 32 --size 32 --model-path DSNET/lenetplus-no-aug-acc=50.78.params --rampup-epoch 10 --lr 0.01 --end-epoch 50 --log-itv 0 --nc 10 --dropout --beta 50 --train-src --postfix st-no-aug-2

# augmentation
# src + target
python main_ssda.py --method mts --src MT --tgt SN --bb lenetplus --bs 256 --resize 36 --size 32 --postfix s-inn-crop-b50-0 --lr 0.01 --end-epoch 50 --log-itv 0 --cfg cfg/digits-a.json --hybridize --nc 10 --dropout --train-src --beta 50 --inn --random-crop
python main_ssda.py --method mts --src MT --tgt SN --bb lenetplus --bs 256 --resize 36 --size 32 --postfix s-inn-crop-b50-1 --lr 0.01 --end-epoch 50 --log-itv 0 --cfg cfg/digits-a.json --hybridize --nc 10 --dropout --train-src --beta 50 --inn --random-crop
python main_ssda.py --method mts --src MT --tgt SN --bb lenetplus --bs 256 --resize 36 --size 32 --postfix s-inn-crop-b50-2 --lr 0.01 --end-epoch 50 --log-itv 0 --cfg cfg/digits-a.json --hybridize --nc 10 --dropout --train-src --beta 50 --inn --random-crop
# 100 target + target
python main_ssda.py --method mtt --src MT --tgt SN --bb lenetplus --bs 256 --resize 36 --size 32 --postfix t-inn-crop-b50-0 --lr 0.01 --end-epoch 50 --log-itv 0 --cfg cfg/digits-a.json --hybridize --nc 10 --dropout --beta 50 --inn --random-crop
python main_ssda.py --method mtt --src MT --tgt SN --bb lenetplus --bs 256 --resize 36 --size 32 --postfix t-inn-crop-b50-1 --lr 0.01 --end-epoch 50 --log-itv 0 --cfg cfg/digits-a.json --hybridize --nc 10 --dropout --beta 50 --inn --random-crop
python main_ssda.py --method mtt --src MT --tgt SN --bb lenetplus --bs 256 --resize 36 --size 32 --postfix t-inn-crop-b50-2 --lr 0.01 --end-epoch 50 --log-itv 0 --cfg cfg/digits-a.json --hybridize --nc 10 --dropout --beta 50 --inn --random-crop
# src + 100 target + target
python main_ssda.py --method mtt --src MT --tgt SN --bb lenetplus --bs 256 --resize 36 --size 32 --postfix st-inn-crop-b50-0 --lr 0.01 --end-epoch 50 --log-itv 0 --cfg cfg/digits-a.json --hybridize --nc 10 --dropout --train-src --beta 50 --inn --random-crop
python main_ssda.py --method mtt --src MT --tgt SN --bb lenetplus --bs 256 --resize 36 --size 32 --postfix st-inn-crop-b50-1 --lr 0.01 --end-epoch 50 --log-itv 0 --cfg cfg/digits-a.json --hybridize --nc 10 --dropout --train-src --beta 50 --inn --random-crop
python main_ssda.py --method mtt --src MT --tgt SN --bb lenetplus --bs 256 --resize 36 --size 32 --postfix st-inn-crop-b50-2 --lr 0.01 --end-epoch 50 --log-itv 0 --cfg cfg/digits-a.json --hybridize --nc 10 --dropout --train-src --beta 50 --inn --random-crop
# dsnet
python main_ssda.py --method mtd --cfg cfg/digits-a.json --src MT --tgt SN --bb lenetplus --bs 256 --resize 36 --size 32 --model-path DSNET/lenetplus-inn-crop-acc=68.23.params --rampup-epoch 1 --lr 0.01 --end-epoch 50 --log-itv 0 --nc 10 --dropout --beta 50 --inn --random-crop --train-src --postfix st-inn-crop-0
python main_ssda.py --method mtd --cfg cfg/digits-a.json --src MT --tgt SN --bb lenetplus --bs 256 --resize 36 --size 32 --model-path DSNET/lenetplus-inn-crop-acc=68.23.params --rampup-epoch 1 --lr 0.01 --end-epoch 50 --log-itv 0 --nc 10 --dropout --beta 50 --inn --random-crop --train-src --postfix st-inn-crop-1
python main_ssda.py --method mtd --cfg cfg/digits-a.json --src MT --tgt SN --bb lenetplus --bs 256 --resize 36 --size 32 --model-path DSNET/lenetplus-inn-crop-acc=68.23.params --rampup-epoch 1 --lr 0.01 --end-epoch 50 --log-itv 0 --nc 10 --dropout --beta 50 --inn --random-crop --train-src --postfix st-inn-crop-2
