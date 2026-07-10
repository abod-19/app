.class Lcom/android/inputmethod/latin/Tutorial$Bubble$1;
.super Ljava/lang/Object;
.source "Tutorial.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/Tutorial$Bubble;->show(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/inputmethod/latin/Tutorial$Bubble;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/Tutorial$Bubble;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/latin/Tutorial$Bubble$1;->this$1:Lcom/android/inputmethod/latin/Tutorial$Bubble;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/inputmethod/latin/Tutorial$Bubble$1;->this$1:Lcom/android/inputmethod/latin/Tutorial$Bubble;

    invoke-static {v0}, Lcom/android/inputmethod/latin/Tutorial$Bubble;->access$0(Lcom/android/inputmethod/latin/Tutorial$Bubble;)Lcom/android/inputmethod/latin/Tutorial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Tutorial;->next()Z

    .line 140
    const/4 v0, 0x1

    return v0
.end method
