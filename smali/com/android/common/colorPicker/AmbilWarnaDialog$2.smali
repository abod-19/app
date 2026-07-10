.class Lcom/android/common/colorPicker/AmbilWarnaDialog$2;
.super Ljava/lang/Object;
.source "AmbilWarnaDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/common/colorPicker/AmbilWarnaDialog;-><init>(Landroid/content/Context;ILcom/android/common/colorPicker/AmbilWarnaDialog$OnAmbilWarnaListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/common/colorPicker/AmbilWarnaDialog;


# direct methods
.method constructor <init>(Lcom/android/common/colorPicker/AmbilWarnaDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog$2;->this$0:Lcom/android/common/colorPicker/AmbilWarnaDialog;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 98
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 99
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_5

    .line 102
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 103
    .local v0, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 105
    .local v1, "y":F
    cmpg-float v3, v0, v6

    if-gez v3, :cond_1

    const/4 v0, 0x0

    .line 106
    :cond_1
    iget-object v3, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog$2;->this$0:Lcom/android/common/colorPicker/AmbilWarnaDialog;

    iget v3, v3, Lcom/android/common/colorPicker/AmbilWarnaDialog;->ukuranUiPx:F

    cmpl-float v3, v0, v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog$2;->this$0:Lcom/android/common/colorPicker/AmbilWarnaDialog;

    iget v0, v3, Lcom/android/common/colorPicker/AmbilWarnaDialog;->ukuranUiPx:F

    .line 107
    :cond_2
    cmpg-float v3, v1, v6

    if-gez v3, :cond_3

    const/4 v1, 0x0

    .line 108
    :cond_3
    iget-object v3, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog$2;->this$0:Lcom/android/common/colorPicker/AmbilWarnaDialog;

    iget v3, v3, Lcom/android/common/colorPicker/AmbilWarnaDialog;->ukuranUiPx:F

    cmpl-float v3, v1, v3

    if-lez v3, :cond_4

    iget-object v3, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog$2;->this$0:Lcom/android/common/colorPicker/AmbilWarnaDialog;

    iget v1, v3, Lcom/android/common/colorPicker/AmbilWarnaDialog;->ukuranUiPx:F

    .line 110
    :cond_4
    iget-object v3, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog$2;->this$0:Lcom/android/common/colorPicker/AmbilWarnaDialog;

    iget-object v4, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog$2;->this$0:Lcom/android/common/colorPicker/AmbilWarnaDialog;

    iget v4, v4, Lcom/android/common/colorPicker/AmbilWarnaDialog;->ukuranUiPx:F

    div-float v4, v5, v4

    mul-float/2addr v4, v0

    iput v4, v3, Lcom/android/common/colorPicker/AmbilWarnaDialog;->sat:F

    .line 111
    iget-object v3, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog$2;->this$0:Lcom/android/common/colorPicker/AmbilWarnaDialog;

    iget-object v4, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog$2;->this$0:Lcom/android/common/colorPicker/AmbilWarnaDialog;

    iget v4, v4, Lcom/android/common/colorPicker/AmbilWarnaDialog;->ukuranUiPx:F

    div-float v4, v5, v4

    mul-float/2addr v4, v1

    sub-float v4, v5, v4

    iput v4, v3, Lcom/android/common/colorPicker/AmbilWarnaDialog;->val:F

    .line 113
    iget-object v3, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog$2;->this$0:Lcom/android/common/colorPicker/AmbilWarnaDialog;

    iget-object v4, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog$2;->this$0:Lcom/android/common/colorPicker/AmbilWarnaDialog;

    invoke-static {v4}, Lcom/android/common/colorPicker/AmbilWarnaDialog;->access$0(Lcom/android/common/colorPicker/AmbilWarnaDialog;)I

    move-result v4

    iput v4, v3, Lcom/android/common/colorPicker/AmbilWarnaDialog;->warnaBaru:I

    .line 115
    iget-object v3, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog$2;->this$0:Lcom/android/common/colorPicker/AmbilWarnaDialog;

    invoke-virtual {v3}, Lcom/android/common/colorPicker/AmbilWarnaDialog;->letakkanKeker()V

    .line 116
    iget-object v3, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog$2;->this$0:Lcom/android/common/colorPicker/AmbilWarnaDialog;

    iget-object v3, v3, Lcom/android/common/colorPicker/AmbilWarnaDialog;->viewWarnaBaru:Landroid/view/View;

    iget-object v4, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog$2;->this$0:Lcom/android/common/colorPicker/AmbilWarnaDialog;

    iget v4, v4, Lcom/android/common/colorPicker/AmbilWarnaDialog;->warnaBaru:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 120
    .end local v0    # "x":F
    .end local v1    # "y":F
    :goto_0
    return v2

    :cond_5
    const/4 v2, 0x0

    goto :goto_0
.end method
