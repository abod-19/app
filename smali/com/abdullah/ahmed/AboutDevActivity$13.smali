.class Lcom/abdullah/ahmed/AboutDevActivity$13;
.super Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$Listener;
.source "AboutDevActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/abdullah/ahmed/AboutDevActivity;->_NewTapTarget(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/abdullah/ahmed/AboutDevActivity;


# direct methods
.method constructor <init>(Lcom/abdullah/ahmed/AboutDevActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/abdullah/ahmed/AboutDevActivity$13;->this$0:Lcom/abdullah/ahmed/AboutDevActivity;

    .line 716
    invoke-direct {p0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTargetClick(Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;)V
    .locals 0

    .prologue
    .line 720
    invoke-super {p0, p1}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$Listener;->onTargetClick(Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;)V

    .line 721
    return-void
.end method
