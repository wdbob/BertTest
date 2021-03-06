# /usr/bin/bash
export DATA_DIR="./data"
export BERT_BASE_DIR="./bert_model/chinese_L-12_H-768_A-12"
python bert/run_classifier.py \
--task_name=mytask \
--do_train=true \
--do_eval=true \
--do_predict=false \
--data_dir=$DATA_DIR/ \
--vocab_file=$BERT_BASE_DIR/vocab.txt \
--bert_config_file=$BERT_BASE_DIR/bert_config.json \
--init_checkpoint=$BERT_BASE_DIR/bert_model.ckpt \
--max_seq_length=512 \
--train_batch_size=4 \
--learning_rate=2e-5 \
--num_train_epochs=3.0 \
--output_dir=./mytask_output