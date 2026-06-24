.class public Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$Listener;
.super Ljava/lang/Object;
.source "AboutDevActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Listener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOuterCircleClick(Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;)V
    .locals 0

    .prologue
    .line 1222
    return-void
.end method

.method public onTargetCancel(Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;)V
    .locals 1

    .prologue
    .line 1216
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->dismiss(Z)V

    .line 1217
    return-void
.end method

.method public onTargetClick(Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;)V
    .locals 1

    .prologue
    .line 1206
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->dismiss(Z)V

    .line 1207
    return-void
.end method

.method public onTargetDismissed(Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;Z)V
    .locals 0

    .prologue
    .line 1231
    return-void
.end method

.method public onTargetLongClick(Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;)V
    .locals 0

    .prologue
    .line 1211
    invoke-virtual {p0, p1}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$Listener;->onTargetClick(Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;)V

    .line 1212
    return-void
.end method
