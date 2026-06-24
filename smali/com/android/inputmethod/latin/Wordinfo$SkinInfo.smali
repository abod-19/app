.class public Lcom/android/inputmethod/latin/Wordinfo$SkinInfo;
.super Ljava/lang/Object;
.source "LoadSkins.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/Wordinfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SkinInfo"
.end annotation


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mPackageContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/inputmethod/latin/Wordinfo$SkinInfo;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/inputmethod/latin/Wordinfo$SkinInfo;->mPackageContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$1(Lcom/android/inputmethod/latin/Wordinfo$SkinInfo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/inputmethod/latin/Wordinfo$SkinInfo;->mDescription:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/android/inputmethod/latin/Wordinfo$SkinInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/inputmethod/latin/Wordinfo$SkinInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getPackageContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/inputmethod/latin/Wordinfo$SkinInfo;->mPackageContext:Landroid/content/Context;

    return-object v0
.end method

.method public getSkinName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/inputmethod/latin/Wordinfo$SkinInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method
