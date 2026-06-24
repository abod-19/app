.class Lcom/abdullah/ahmed/MainActivity$13$1$1;
.super Ljava/util/TimerTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/abdullah/ahmed/MainActivity$13$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/abdullah/ahmed/MainActivity$13$1;


# direct methods
.method constructor <init>(Lcom/abdullah/ahmed/MainActivity$13$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/abdullah/ahmed/MainActivity$13$1$1;->this$2:Lcom/abdullah/ahmed/MainActivity$13$1;

    .line 696
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/abdullah/ahmed/MainActivity$13$1$1;)Lcom/abdullah/ahmed/MainActivity$13$1;
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity$13$1$1;->this$2:Lcom/abdullah/ahmed/MainActivity$13$1;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 699
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity$13$1$1;->this$2:Lcom/abdullah/ahmed/MainActivity$13$1;

    invoke-static {v0}, Lcom/abdullah/ahmed/MainActivity$13$1;->access$0(Lcom/abdullah/ahmed/MainActivity$13$1;)Lcom/abdullah/ahmed/MainActivity$13;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/MainActivity$13;->access$0(Lcom/abdullah/ahmed/MainActivity$13;)Lcom/abdullah/ahmed/MainActivity;

    move-result-object v0

    new-instance v1, Lcom/abdullah/ahmed/MainActivity$13$1$1$1;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/MainActivity$13$1$1$1;-><init>(Lcom/abdullah/ahmed/MainActivity$13$1$1;)V

    invoke-virtual {v0, v1}, Lcom/abdullah/ahmed/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 847
    return-void
.end method
