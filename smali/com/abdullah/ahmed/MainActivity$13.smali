.class Lcom/abdullah/ahmed/MainActivity$13;
.super Ljava/util/TimerTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/abdullah/ahmed/MainActivity;->_animation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/abdullah/ahmed/MainActivity;


# direct methods
.method constructor <init>(Lcom/abdullah/ahmed/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/abdullah/ahmed/MainActivity$13;->this$0:Lcom/abdullah/ahmed/MainActivity;

    .line 681
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/abdullah/ahmed/MainActivity$13;)Lcom/abdullah/ahmed/MainActivity;
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity$13;->this$0:Lcom/abdullah/ahmed/MainActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 684
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity$13;->this$0:Lcom/abdullah/ahmed/MainActivity;

    new-instance v1, Lcom/abdullah/ahmed/MainActivity$13$1;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/MainActivity$13$1;-><init>(Lcom/abdullah/ahmed/MainActivity$13;)V

    invoke-virtual {v0, v1}, Lcom/abdullah/ahmed/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 852
    return-void
.end method
