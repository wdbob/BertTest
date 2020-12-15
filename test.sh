# /usr/bin/bash
export DATA_DIR="./data"
export BERT_BASE_DIR="./bert_model/chinese_L-12_H-768_A-12"
export TRAINED_CLASSIFIER="./mytask_output"
python bert/run_classifier.py \
  --task_name=mytask \
  --do_predict=true \
  --data_dir=$DATA_DIR \
  --vocab_file=$BERT_BASE_DIR/vocab.txt \
  --bert_config_file=$BERT_BASE_DIR/bert_config.json \
  --init_checkpoint=$TRAINED_CLASSIFIER \
  --max_seq_length=512 \
  --output_dir=./mytask_output