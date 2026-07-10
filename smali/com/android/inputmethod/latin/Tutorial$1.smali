.class Lcom/android/inputmethod/latin/Tutorial$1;
.super Landroid/os/Handler;
.source "Tutorial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/Tutorial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/Tutorial;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/Tutorial;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/latin/Tutorial$1;->this$0:Lcom/android/inputmethod/latin/Tutorial;

    .line 50
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 53
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 59
    :goto_0
    return-void

    .line 55
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/inputmethod/latin/Tutorial$Bubble;

    .line 56
    .local v0, "bubba":Lcom/android/inputmethod/latin/Tutorial$Bubble;
    iget-object v1, p0, Lcom/android/inputmethod/latin/Tutorial$1;->this$0:Lcom/android/inputmethod/latin/Tutorial;

    invoke-static {v1}, Lcom/android/inputmethod/latin/Tutorial;->access$0(Lcom/android/inputmethod/latin/Tutorial;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/inputmethod/latin/Tutorial$1;->this$0:Lcom/android/inputmethod/latin/Tutorial;

    invoke-static {v2}, Lcom/android/inputmethod/latin/Tutorial;->access$0(Lcom/android/inputmethod/latin/Tutorial;)[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/inputmethod/latin/Tutorial$Bubble;->show(II)V

    goto :goto_0

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
