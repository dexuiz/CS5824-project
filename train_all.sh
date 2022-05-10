cd codeBERT/code
data_dir=../../data
epochs=6
beam_size=15



 #programming language
lang=python
train_file=$data_dir/$lang/train/
dev_file=$data_dir/$lang/dev/
test_file=$data_dir/$lang/test/
lr=5e-5
batch_size=128
source_length=400 
target_length=30 
output_dir=../../output/roberta-python
pretrained_model=roberta-base #Roberta: roberta-base

CUDA_VISIBLE_DEVICES=$1 python run.py \
    --model_type roberta \
    --model_name_or_path $pretrained_model \
    --train_filename $train_file \
    --dev_filename $dev_file \
    --test_filename $test_file \
    --output_dir $output_dir \
    --max_source_length $source_length \
    --max_target_length $target_length \
    --beam_size $beam_size \
    --train_batch_size $batch_size \
    --eval_batch_size $batch_size \
    --learning_rate $lr \
    --num_train_epochs $epochs \
    --do_train \
    --do_eval \
    --do_test 

lang=java #programming language
train_file=$data_dir/$lang/train/
dev_file=$data_dir/$lang/dev/
test_file=$data_dir/$lang/test/
lr=5e-5
batch_size=128
source_length=200 
target_length=30 
output_dir=../../output/roberta-java
pretrained_model=roberta-base #Roberta: roberta-base

CUDA_VISIBLE_DEVICES=$1 python3 run.py \
    --model_type roberta \
    --model_name_or_path $pretrained_model \
    --train_filename $train_file \
    --dev_filename $dev_file \
    --test_filename $test_file \
    --output_dir $output_dir \
    --max_source_length $source_length \
    --max_target_length $target_length \
    --beam_size $beam_size \
    --train_batch_size $batch_size \
    --eval_batch_size $batch_size \
    --learning_rate $lr \
    --num_train_epochs $epochs \
    --do_train \
    --do_eval \
    --do_test

lang=python #programming language
train_file=$data_dir/$lang/train/
dev_file=$data_dir/$lang/dev/
test_file=$data_dir/$lang/test/
lr=1e-5
batch_size=100
source_length=400 
target_length=30 
output_dir=../../output/t5-python-beam
pretrained_model=Salesforce/codet5-base #Roberta: roberta-base

CUDA_VISIBLE_DEVICES=$1 python3 run_t5.py \
    --model_type codeT5 \
    --model_name_or_path $pretrained_model \
    --train_filename $train_file \
    --dev_filename $dev_file \
    --test_filename $test_file \
    --output_dir $output_dir \
    --max_source_length $source_length \
    --max_target_length $target_length \
    --beam_size $beam_size \
    --train_batch_size $batch_size \
    --eval_batch_size $batch_size \
    --learning_rate $lr \
    --num_train_epochs $epochs \
    --do_train \
    --do_eval \
    --do_test 

lang=java #programming language
train_file=$data_dir/$lang/train/
dev_file=$data_dir/$lang/dev/
test_file=$data_dir/$lang/test/
lr=1e-5
batch_size=100
source_length=200 
target_length=30 
output_dir=../../output/t5-java-beam
pretrained_model=Salesforce/codet5-base #Roberta: roberta-base

CUDA_VISIBLE_DEVICES=$1 python3 run_t5.py \
    --model_type codeT5 \
    --model_name_or_path $pretrained_model \
    --train_filename $train_file \
    --dev_filename $dev_file \
    --test_filename $test_file \
    --output_dir $output_dir \
    --max_source_length $source_length \
    --max_target_length $target_length \
    --beam_size $beam_size \
    --train_batch_size $batch_size \
    --eval_batch_size $batch_size \
    --learning_rate $lr \
    --num_train_epochs $epochs \
    --do_train \
    --do_eval \
    --do_test

lang=python #programming language
train_file=$data_dir/$lang/train/
dev_file=$data_dir/$lang/dev/
test_file=$data_dir/$lang/test/
lr=5e-5
batch_size=128
source_length=400 
target_length=30 
output_dir=../../output/plbart-python-beam
pretrained_model=uclanlp/plbart-base #Roberta: roberta-base

CUDA_VISIBLE_DEVICES=$1 python3 run_PLbart_python.py \
    --model_type PLbart \
    --model_name_or_path $pretrained_model \
    --train_filename $train_file \
    --dev_filename $dev_file \
    --test_filename $test_file \
    --output_dir $output_dir \
    --max_source_length $source_length \
    --max_target_length $target_length \
    --beam_size $beam_size \
    --train_batch_size $batch_size \
    --eval_batch_size $batch_size \
    --learning_rate $lr \
    --num_train_epochs $epochs \
    --do_train \
    --do_eval \
    --do_test 


lang=java #programming language
train_file=$data_dir/$lang/train/
dev_file=$data_dir/$lang/dev/
test_file=$data_dir/$lang/test/
lr=5e-5
batch_size=128
source_length=200 
target_length=30 
output_dir=../../output/plbart-java-beam
pretrained_model=uclanlp/plbart-base #Roberta: roberta-base

CUDA_VISIBLE_DEVICES=$1 python3 run_PLbart_java.py \
    --model_type PLbart \
    --model_name_or_path $pretrained_model \
    --train_filename $train_file \
    --dev_filename $dev_file \
    --test_filename $test_file \
    --output_dir $output_dir \
    --max_source_length $source_length \
    --max_target_length $target_length \
    --beam_size $beam_size \
    --train_batch_size $batch_size \
    --eval_batch_size $batch_size \
    --learning_rate $lr \
    --num_train_epochs $epochs \
    --do_train \
    --do_eval \
    --do_test
lang=java #programming language
train_file=$data_dir/$lang/train/
dev_file=$data_dir/$lang/dev/
test_file=$data_dir/$lang/test/
lr=5e-5
batch_size=128
source_length=200 
target_length=30 
output_dir=../../output/plbart-java-beam
pretrained_model=uclanlp/plbart-base #Roberta: roberta-base

CUDA_VISIBLE_DEVICES=$1 python3 run_PLbart_java.py \
    --model_type PLbart \
    --model_name_or_path $pretrained_model \
    --train_filename $train_file \
    --dev_filename $dev_file \
    --test_filename $test_file \
    --output_dir $output_dir \
    --max_source_length $source_length \
    --max_target_length $target_length \
    --beam_size $beam_size \
    --train_batch_size $batch_size \
    --eval_batch_size $batch_size \
    --learning_rate $lr \
    --num_train_epochs $epochs \
    --do_train \
    --do_eval \
    --do_test
