python ../exp/trainer-wip.py \
--model_name_or_path "google/pegasus-large" \
--dataset_path "../data/xsum-256" \
--dataset_name "xsum" \
--max_train_samples 64 \
--max_eval_samples 32 \
--max_predict_samples 32 \
--fp16 False \
--seed 322 \
--max_source_length 512 \
--max_target_length 56 \
--per_device_train_batch_size 1 \
--per_device_eval_batch_size 1 \
--gradient_accumulation_steps 16 \
--num_train_epochs 2.0 \
--learning_rate 1e-4 \
--weight_decay 0.01 \
--label_smoothing_factor 0.1 \
--adafactor True \
--evaluation_strategy "epoch" \
--logging_strategy "steps" \
--save_strategy "epoch" \
--logging_steps 1 \
--save_total_limit 3 \
--predict_with_generate \
--overwrite_output_dir \
--do_train \
--do_predict \
--output_dir "../dev/outputs/pegasus-dev" \
--logging_dir "../dev/logs" \
--cache_dir "../dev/cache"