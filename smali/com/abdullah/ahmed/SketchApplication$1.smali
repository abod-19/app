.class Lcom/abdullah/ahmed/SketchApplication$1;
.super Ljava/lang/Object;
.source "SketchApplication.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/abdullah/ahmed/SketchApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/abdullah/ahmed/SketchApplication;


# direct methods
.method constructor <init>(Lcom/abdullah/ahmed/SketchApplication;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/abdullah/ahmed/SketchApplication$1;->this$0:Lcom/abdullah/ahmed/SketchApplication;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 26
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/abdullah/ahmed/SketchApplication$1;->this$0:Lcom/abdullah/ahmed/SketchApplication;

    invoke-virtual {v1}, Lcom/abdullah/ahmed/SketchApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/abdullah/ahmed/DebugActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 27
    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 29
    const-string v1, "error"

    iget-object v2, p0, Lcom/abdullah/ahmed/SketchApplication$1;->this$0:Lcom/abdullah/ahmed/SketchApplication;

    invoke-static {v2, p2}, Lcom/abdullah/ahmed/SketchApplication;->access$0(Lcom/abdullah/ahmed/SketchApplication;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    iget-object v1, p0, Lcom/abdullah/ahmed/SketchApplication$1;->this$0:Lcom/abdullah/ahmed/SketchApplication;

    invoke-virtual {v1}, Lcom/abdullah/ahmed/SketchApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x2b67

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 34
    iget-object v0, p0, Lcom/abdullah/ahmed/SketchApplication$1;->this$0:Lcom/abdullah/ahmed/SketchApplication;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Lcom/abdullah/ahmed/SketchApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 35
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 37
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 38
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 40
    iget-object v0, p0, Lcom/abdullah/ahmed/SketchApplication$1;->this$0:Lcom/abdullah/ahmed/SketchApplication;

    invoke-static {v0}, Lcom/abdullah/ahmed/SketchApplication;->access$1(Lcom/abdullah/ahmed/SketchApplication;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 41
    return-void
.end method
