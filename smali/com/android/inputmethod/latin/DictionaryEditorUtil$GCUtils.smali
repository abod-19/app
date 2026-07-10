.class public Lcom/android/inputmethod/latin/DictionaryEditorUtil$GCUtils;
.super Ljava/lang/Object;
.source "DictionaryEditorUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/DictionaryEditorUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GCUtils"
.end annotation


# static fields
.field private static final GC_INTERVAL:J = 0x3e8L

.field public static final GC_TRY_COUNT:I = 0x2

.field public static final GC_TRY_LOOP_MAX:I = 0x5

.field private static final TAG:Ljava/lang/String; = "GCUtils"

.field private static sInstance:Lcom/android/inputmethod/latin/DictionaryEditorUtil$GCUtils;


# instance fields
.field private mGCTryCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/android/inputmethod/latin/DictionaryEditorUtil$GCUtils;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/DictionaryEditorUtil$GCUtils;-><init>()V

    sput-object v0, Lcom/android/inputmethod/latin/DictionaryEditorUtil$GCUtils;->sInstance:Lcom/android/inputmethod/latin/DictionaryEditorUtil$GCUtils;

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/DictionaryEditorUtil$GCUtils;->mGCTryCount:I

    .line 41
    return-void
.end method

.method public static getInstance()Lcom/android/inputmethod/latin/DictionaryEditorUtil$GCUtils;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/android/inputmethod/latin/DictionaryEditorUtil$GCUtils;->sInstance:Lcom/android/inputmethod/latin/DictionaryEditorUtil$GCUtils;

    return-object v0
.end method


# virtual methods
.method public reset()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/DictionaryEditorUtil$GCUtils;->mGCTryCount:I

    .line 57
    return-void
.end method

.method public tryGCOrWait(Ljava/lang/String;Ljava/lang/Throwable;)Z
    .locals 4
    .param p1, "metaData"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 60
    iget v2, p0, Lcom/android/inputmethod/latin/DictionaryEditorUtil$GCUtils;->mGCTryCount:I

    if-nez v2, :cond_0

    .line 61
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 63
    :cond_0
    iget v2, p0, Lcom/android/inputmethod/latin/DictionaryEditorUtil$GCUtils;->mGCTryCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/inputmethod/latin/DictionaryEditorUtil$GCUtils;->mGCTryCount:I

    const/4 v3, 0x2

    if-le v2, v3, :cond_1

    .line 64
    invoke-static {p1, p2}, Lcom/android/inputmethod/latin/LatinImeLogger;->logOnException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    :goto_0
    return v1

    .line 68
    :cond_1
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    const/4 v1, 0x1

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "GCUtils"

    const-string v3, "Sleep was interrupted."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-static {p1, p2}, Lcom/android/inputmethod/latin/LatinImeLogger;->logOnException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
