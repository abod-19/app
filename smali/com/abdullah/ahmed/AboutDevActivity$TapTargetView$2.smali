.class Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$2;
.super Ljava/lang/Object;
.source "AboutDevActivity.java"

# interfaces
.implements Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;


# direct methods
.method constructor <init>(Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$2;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    .line 1274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(F)V
    .locals 1

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$2;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget-object v0, v0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->expandContractUpdateListener:Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder$UpdateListener;

    invoke-interface {v0, p1}, Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder$UpdateListener;->onUpdate(F)V

    .line 1278
    return-void
.end method
