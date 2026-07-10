.class Lcom/abdullah/ahmed/AboutDevActivity$11;
.super Ljava/util/TimerTask;
.source "AboutDevActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/abdullah/ahmed/AboutDevActivity;->_them()V
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
    iput-object p1, p0, Lcom/abdullah/ahmed/AboutDevActivity$11;->this$0:Lcom/abdullah/ahmed/AboutDevActivity;

    .line 430
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/abdullah/ahmed/AboutDevActivity$11;)Lcom/abdullah/ahmed/AboutDevActivity;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$11;->this$0:Lcom/abdullah/ahmed/AboutDevActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$11;->this$0:Lcom/abdullah/ahmed/AboutDevActivity;

    new-instance v1, Lcom/abdullah/ahmed/AboutDevActivity$11$1;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/AboutDevActivity$11$1;-><init>(Lcom/abdullah/ahmed/AboutDevActivity$11;)V

    invoke-virtual {v0, v1}, Lcom/abdullah/ahmed/AboutDevActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 440
    return-void
.end method
