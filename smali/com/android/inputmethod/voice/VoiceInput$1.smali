.class Lcom/android/inputmethod/voice/VoiceInput$1;
.super Landroid/os/Handler;
.source "VoiceInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/voice/VoiceInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/voice/VoiceInput;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/voice/VoiceInput;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/voice/VoiceInput$1;->this$0:Lcom/android/inputmethod/voice/VoiceInput;

    .line 132
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 135
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput$1;->this$0:Lcom/android/inputmethod/voice/VoiceInput;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/inputmethod/voice/VoiceInput;->access$0(Lcom/android/inputmethod/voice/VoiceInput;I)V

    .line 137
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput$1;->this$0:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-static {v0}, Lcom/android/inputmethod/voice/VoiceInput;->access$1(Lcom/android/inputmethod/voice/VoiceInput;)Lcom/android/inputmethod/voice/RecognitionView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/RecognitionView;->finish()V

    .line 138
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput$1;->this$0:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-static {v0}, Lcom/android/inputmethod/voice/VoiceInput;->access$2(Lcom/android/inputmethod/voice/VoiceInput;)Lcom/android/inputmethod/voice/VoiceInput$UiListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/inputmethod/voice/VoiceInput$UiListener;->onCancelVoice()V

    .line 140
    :cond_0
    return-void
.end method
