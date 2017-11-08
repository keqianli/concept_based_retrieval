export LABELS_FILE=../input/arxiv_cs_small_labels_num.txt

source conf.d/autoPhrase.conf

export OUTPUT_DIR=../output/$MODEL
export SEGGED_TEXT_TFIDF=$OUTPUT_DIR/tfidf
export FINAL_RELEVANCE=$OUTPUT_DIR/relevance.txt
# $SEGGED_TEXT_TFIDF.relevance

python evaluate.py $FINAL_RELEVANCE $LABELS_FILE
