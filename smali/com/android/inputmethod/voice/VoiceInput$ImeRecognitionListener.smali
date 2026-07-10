.class Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;
.super Ljava/lang/Object;
.source "VoiceInput.java"

# interfaces
.implements Landroid/speech/RecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/voice/VoiceInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImeRecognitionListener"
.end annotation


# instance fields
.field private mEndpointed:Z

.field mSpeechStart:I

.field final mWaveBuffer:Ljava/io/ByteArrayOutputStream;

.field final synthetic this$0:Lcom/android/inputmethod/voice/VoiceInput;


# direct methods
.method private constructor <init>(Lcom/android/inputmethod/voice/VoiceInput;)V
    .locals 1

    .prologue
    .line 554
    iput-object p1, p0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->this$0:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 556
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->mWaveBuffer:Ljava/io/ByteArrayOutputStream;

    .line 558
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->mEndpointed:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/inputmethod/voice/VoiceInput;Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;)V
    .locals 0

    .prologue
    .line 554
    invoke-direct {p0, p1}, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;-><init>(Lcom/android/inputmethod/voice/VoiceInput;)V

    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .locals 1

    .prologue
    .line 565
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->mEndpointed:Z

    .line 566
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->mWaveBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->mSpeechStart:I

    .line 567
    return-void
.end method

.method public onBufferReceived([B)V
    .locals 1
    .param p1, "buf"    # [B

    .prologue
    .line 575
    :try_start_0
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->mWaveBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    :goto_0
    return-void

    .line 576
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onEndOfSpeech()V
    .locals 4

    .prologue
    .line 580
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->mEndpointed:Z

    .line 581
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->this$0:Lcom/android/inputmethod/voice/VoiceInput;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/inputmethod/voice/VoiceInput;->access$0(Lcom/android/inputmethod/voice/VoiceInput;I)V

    .line 582
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->this$0:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-static {v0}, Lcom/android/inputmethod/voice/VoiceInput;->access$1(Lcom/android/inputmethod/voice/VoiceInput;)Lcom/android/inputmethod/voice/RecognitionView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->mWaveBuffer:Ljava/io/ByteArrayOutputStream;

    iget v2, p0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->mSpeechStart:I

    iget-object v3, p0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->mWaveBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/inputmethod/voice/RecognitionView;->showWorking(Ljava/io/ByteArrayOutputStream;II)V

    .line 583
    return-void
.end method

.method public onError(I)V
    .locals 2
    .param p1, "errorType"    # I

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->this$0:Lcom/android/inputmethod/voice/VoiceInput;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/inputmethod/voice/VoiceInput;->access$0(Lcom/android/inputmethod/voice/VoiceInput;I)V

    .line 587
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->this$0:Lcom/android/inputmethod/voice/VoiceInput;

    iget-boolean v1, p0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->mEndpointed:Z

    invoke-static {v0, p1, v1}, Lcom/android/inputmethod/voice/VoiceInput;->access$3(Lcom/android/inputmethod/voice/VoiceInput;IZ)V

    .line 588
    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "eventType"    # I
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 648
    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "partialResults"    # Landroid/os/Bundle;

    .prologue
    .line 644
    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "noiseParams"    # Landroid/os/Bundle;

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->this$0:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-static {v0}, Lcom/android/inputmethod/voice/VoiceInput;->access$1(Lcom/android/inputmethod/voice/VoiceInput;)Lcom/android/inputmethod/voice/RecognitionView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/RecognitionView;->showListening()V

    .line 562
    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .locals 19
    .param p1, "resultsBundle"    # Landroid/os/Bundle;

    .prologue
    .line 591
    .line 592
    const-string v16, "results_recognition"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 595
    .local v11, "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v16, "alternates_bundle"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 596
    .local v6, "alternatesBundle":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->this$0:Lcom/android/inputmethod/voice/VoiceInput;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Lcom/android/inputmethod/voice/VoiceInput;->access$0(Lcom/android/inputmethod/voice/VoiceInput;I)V

    .line 599
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 601
    .local v7, "alternatives":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/CharSequence;>;>;"
    sget-boolean v16, Lcom/android/inputmethod/voice/VoiceInput;->ENABLE_WORD_CORRECTIONS:Z

    if-eqz v16, :cond_1

    if-eqz v6, :cond_1

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v16

    if-lez v16, :cond_1

    .line 603
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 604
    .local v15, "words":[Ljava/lang/String;
    const-string v16, "spans"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v13

    .line 605
    .local v13, "spansBundle":Landroid/os/Bundle;
    invoke-virtual {v13}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_3

    .line 635
    .end local v13    # "spansBundle":Landroid/os/Bundle;
    .end local v15    # "words":[Ljava/lang/String;
    :cond_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v16

    const/16 v17, 0x5

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_2

    .line 636
    const/16 v16, 0x0

    const/16 v17, 0x5

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v11, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v11

    .line 638
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->this$0:Lcom/android/inputmethod/voice/VoiceInput;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/inputmethod/voice/VoiceInput;->access$2(Lcom/android/inputmethod/voice/VoiceInput;)Lcom/android/inputmethod/voice/VoiceInput$UiListener;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v0, v11, v7}, Lcom/android/inputmethod/voice/VoiceInput$UiListener;->onVoiceResults(Ljava/util/List;Ljava/util/Map;)V

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->this$0:Lcom/android/inputmethod/voice/VoiceInput;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/inputmethod/voice/VoiceInput;->access$1(Lcom/android/inputmethod/voice/VoiceInput;)Lcom/android/inputmethod/voice/RecognitionView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/inputmethod/voice/RecognitionView;->finish()V

    .line 640
    return-void

    .line 605
    .restart local v13    # "spansBundle":Landroid/os/Bundle;
    .restart local v15    # "words":[Ljava/lang/String;
    :cond_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 607
    .local v9, "key":Ljava/lang/String;
    invoke-virtual {v13, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    .line 608
    .local v12, "spanBundle":Landroid/os/Bundle;
    const-string v17, "start"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 609
    .local v14, "start":I
    const-string v17, "length"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 611
    .local v10, "length":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_0

    array-length v0, v15

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v14, v0, :cond_0

    .line 615
    aget-object v17, v15, v14

    move-object/from16 v0, v17

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 616
    .local v2, "altList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    if-nez v2, :cond_4

    .line 617
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "altList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 618
    .restart local v2    # "altList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    aget-object v17, v15, v14

    move-object/from16 v0, v17

    invoke-interface {v7, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    :cond_4
    const-string v17, "alternates"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v5

    .line 622
    .local v5, "alternatesArr":[Landroid/os/Parcelable;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_0
    array-length v0, v5

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_0

    .line 623
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v17

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 624
    aget-object v4, v5, v8

    check-cast v4, Landroid/os/Bundle;

    .line 625
    .local v4, "alternateBundle":Landroid/os/Bundle;
    const-string v17, "text"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 627
    .local v3, "alternate":Ljava/lang/String;
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 628
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 623
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method public onRmsChanged(F)V
    .locals 1
    .param p1, "rmsdB"    # F

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->this$0:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-static {v0}, Lcom/android/inputmethod/voice/VoiceInput;->access$1(Lcom/android/inputmethod/voice/VoiceInput;)Lcom/android/inputmethod/voice/RecognitionView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/voice/RecognitionView;->updateVoiceMeter(F)V

    .line 571
    return-void
.end method
