.class Lcom/android/inputmethod/latin/DictionaryEditor$5;
.super Ljava/lang/Object;
.source "DictionaryEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/DictionaryEditor;->switchToRecognitionStatusView(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

.field private final synthetic val$configuration:Landroid/content/res/Configuration;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/DictionaryEditor;Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/latin/DictionaryEditor$5;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    iput-object p2, p0, Lcom/android/inputmethod/latin/DictionaryEditor$5;->val$configuration:Landroid/content/res/Configuration;

    .line 2366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 2370
    iget-object v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor$5;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/inputmethod/latin/DictionaryEditor;->setCandidatesViewShown(Z)V

    .line 2371
    iget-object v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor$5;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/inputmethod/latin/DictionaryEditor;->access$9(Lcom/android/inputmethod/latin/DictionaryEditor;Z)V

    .line 2372
    iget-object v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor$5;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-static {v7}, Lcom/android/inputmethod/latin/DictionaryEditor;->access$11(Lcom/android/inputmethod/latin/DictionaryEditor;)Lcom/android/inputmethod/voice/VoiceInput;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/inputmethod/voice/VoiceInput;->newView()V

    .line 2373
    iget-object v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor$5;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-static {v7}, Lcom/android/inputmethod/latin/DictionaryEditor;->access$11(Lcom/android/inputmethod/latin/DictionaryEditor;)Lcom/android/inputmethod/voice/VoiceInput;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/inputmethod/voice/VoiceInput;->getView()Landroid/view/View;

    move-result-object v6

    .line 2375
    .local v6, "v":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 2376
    .local v4, "p":Landroid/view/ViewParent;
    if-eqz v4, :cond_0

    instance-of v7, v4, Landroid/view/ViewGroup;

    if-eqz v7, :cond_0

    .line 2377
    check-cast v4, Landroid/view/ViewGroup;

    .end local v4    # "p":Landroid/view/ViewParent;
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2380
    :cond_0
    iget-object v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor$5;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    iget-object v7, v7, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/Calibration;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v3

    .line 2386
    .local v3, "keyboardView":Landroid/view/View;
    if-eqz v3, :cond_2

    .line 2387
    const v7, 0x7f08001c

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 2389
    .local v5, "popupLayout":Landroid/view/View;
    iget-object v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor$5;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/DictionaryEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v1, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2390
    .local v1, "displayHeight":I
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v0, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2391
    .local v0, "currentHeight":I
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 2392
    .local v2, "keyboardHeight":I
    iget-object v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor$5;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-static {v7}, Lcom/android/inputmethod/latin/DictionaryEditor;->access$12(Lcom/android/inputmethod/latin/DictionaryEditor;)I

    move-result v7

    if-gt v7, v2, :cond_1

    .line 2393
    iget-object v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor$5;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-static {v7}, Lcom/android/inputmethod/latin/DictionaryEditor;->access$12(Lcom/android/inputmethod/latin/DictionaryEditor;)I

    move-result v7

    if-le v7, v0, :cond_4

    .line 2394
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 2395
    iget-object v8, p0, Lcom/android/inputmethod/latin/DictionaryEditor$5;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-static {v8}, Lcom/android/inputmethod/latin/DictionaryEditor;->access$12(Lcom/android/inputmethod/latin/DictionaryEditor;)I

    move-result v8

    .line 2394
    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2401
    .end local v0    # "currentHeight":I
    .end local v1    # "displayHeight":I
    .end local v2    # "keyboardHeight":I
    .end local v5    # "popupLayout":Landroid/view/View;
    :cond_2
    :goto_0
    iget-object v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor$5;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v7, v6}, Lcom/android/inputmethod/latin/DictionaryEditor;->setInputView(Landroid/view/View;)V

    .line 2402
    iget-object v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor$5;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/DictionaryEditor;->updateInputViewShown()V

    .line 2404
    iget-object v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor$5;->val$configuration:Landroid/content/res/Configuration;

    if-eqz v7, :cond_3

    .line 2405
    iget-object v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor$5;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-static {v7}, Lcom/android/inputmethod/latin/DictionaryEditor;->access$11(Lcom/android/inputmethod/latin/DictionaryEditor;)Lcom/android/inputmethod/voice/VoiceInput;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/inputmethod/voice/VoiceInput;->onConfigurationChanged()V

    .line 2407
    :cond_3
    return-void

    .line 2396
    .restart local v0    # "currentHeight":I
    .restart local v1    # "displayHeight":I
    .restart local v2    # "keyboardHeight":I
    .restart local v5    # "popupLayout":Landroid/view/View;
    :cond_4
    if-gt v2, v0, :cond_5

    .line 2397
    div-int/lit8 v7, v1, 0x6

    if-le v2, v7, :cond_2

    .line 2398
    :cond_5
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iput v2, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method
