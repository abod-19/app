.class Lcom/abdullah/ahmed/MainActivity$12$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/abdullah/ahmed/MainActivity$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/abdullah/ahmed/MainActivity$12;


# direct methods
.method constructor <init>(Lcom/abdullah/ahmed/MainActivity$12;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/abdullah/ahmed/MainActivity$12$1;->this$1:Lcom/abdullah/ahmed/MainActivity$12;

    .line 642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 645
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity$12$1;->this$1:Lcom/abdullah/ahmed/MainActivity$12;

    invoke-static {v0}, Lcom/abdullah/ahmed/MainActivity$12;->access$0(Lcom/abdullah/ahmed/MainActivity$12;)Lcom/abdullah/ahmed/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/abdullah/ahmed/MainActivity;->_animation()V

    .line 646
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity$12$1;->this$1:Lcom/abdullah/ahmed/MainActivity$12;

    invoke-static {v0}, Lcom/abdullah/ahmed/MainActivity$12;->access$0(Lcom/abdullah/ahmed/MainActivity$12;)Lcom/abdullah/ahmed/MainActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/MainActivity;->access$15(Lcom/abdullah/ahmed/MainActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 647
    return-void
.end method
