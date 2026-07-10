.class public Lcom/android/inputmethod/latin/KeyTranslation;
.super Ljava/lang/Object;
.source "KeyTranslation.java"


# static fields
.field private static final XML_ALT_ATTRIBUTE:Ljava/lang/String; = "altModifier"

.field private static final XML_KEYS_ATTRIBUTE:Ljava/lang/String; = "keySequence"

.field private static final XML_QWERTY_ATTRIBUTE:Ljava/lang/String; = "QwertyTranslation"

.field private static final XML_SEQUENCE_TAG:Ljava/lang/String; = "SequenceMapping"

.field private static final XML_SHIFT_ATTRIBUTE:Ljava/lang/String; = "shiftModifier"

.field private static final XML_TARGET_ATTRIBUTE:Ljava/lang/String; = "targetChar"

.field private static final XML_TARGET_CHAR_CODE_ATTRIBUTE:Ljava/lang/String; = "targetCharCode"

.field private static final XML_TRANSLATION_TAG:Ljava/lang/String; = "PhysicalTranslation"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getKeyCodesFromPhysicalSequence(Ljava/lang/String;)[I
    .locals 8
    .param p1, "keyCodesArray"    # Ljava/lang/String;

    .prologue
    .line 102
    const-string v6, ","

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 103
    .local v4, "splitted":[Ljava/lang/String;
    array-length v6, v4

    new-array v2, v6, [I

    .line 104
    .local v2, "keyCodes":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v2

    if-lt v1, v6, :cond_0

    .line 119
    return-object v2

    .line 106
    :cond_0
    :try_start_0
    aget-object v6, v4, v1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v2, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    :catch_0
    move-exception v3

    .line 108
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    aget-object v5, v4, v1

    .line 110
    .local v5, "v":Ljava/lang/String;
    :try_start_1
    const-class v6, Landroid/view/KeyEvent;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 111
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    .line 110
    aput v6, v2, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 113
    :catch_1
    move-exception v0

    .line 114
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method


# virtual methods
.method public createPhysicalTranslatorFromResourceId(Landroid/content/Context;I)Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "qwertyTranslationId"    # I

    .prologue
    .line 24
    new-instance v18, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;

    invoke-direct/range {v18 .. v18}, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;-><init>()V

    .line 25
    .local v18, "translator":Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v12

    .line 26
    .local v12, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v3, "ASK Hard Translation Parser"

    .line 29
    .local v3, "TAG":Ljava/lang/String;
    const/4 v7, 0x0

    .line 30
    .local v7, "inTranslations":Z
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .local v6, "event":I
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v6, v0, :cond_1

    .line 99
    .end local v6    # "event":I
    :goto_1
    return-object v18

    .line 32
    .restart local v6    # "event":I
    :cond_1
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 33
    .local v14, "tag":Ljava/lang/String;
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v6, v0, :cond_8

    .line 34
    const-string v19, "PhysicalTranslation"

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 35
    const/4 v7, 0x1

    .line 36
    invoke-static {v12}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    .line 37
    .local v4, "attrs":Landroid/util/AttributeSet;
    const/16 v19, 0x0

    const-string v20, "QwertyTranslation"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v4, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 38
    .local v13, "qwerty":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;->addQwertyTranslation(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    .end local v4    # "attrs":Landroid/util/AttributeSet;
    .end local v6    # "event":I
    .end local v13    # "qwerty":Ljava/lang/String;
    .end local v14    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 96
    .local v5, "e":Ljava/lang/Exception;
    const-string v19, "ASK Hard Translation Parser"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Parse error:"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 41
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v6    # "event":I
    .restart local v14    # "tag":Ljava/lang/String;
    :cond_2
    if-eqz v7, :cond_0

    :try_start_1
    const-string v19, "SequenceMapping"

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 44
    invoke-static {v12}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    .line 46
    .restart local v4    # "attrs":Landroid/util/AttributeSet;
    const/16 v19, 0x0

    const-string v20, "keySequence"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v4, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/KeyTranslation;->getKeyCodesFromPhysicalSequence(Ljava/lang/String;)[I

    move-result-object v11

    .line 47
    .local v11, "keyCodes":[I
    const/16 v19, 0x0

    const-string v20, "altModifier"

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v4, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    .line 48
    .local v8, "isAlt":Z
    const/16 v19, 0x0

    const-string v20, "shiftModifier"

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v4, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    .line 49
    .local v9, "isShift":Z
    const/16 v19, 0x0

    const-string v20, "targetChar"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v4, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 50
    .local v16, "targetChar":Ljava/lang/String;
    const/16 v19, 0x0

    const-string v20, "targetCharCode"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v4, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 52
    .local v17, "targetCharCode":Ljava/lang/String;
    if-nez v16, :cond_4

    .line 53
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    int-to-char v0, v0

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v15

    .line 57
    .local v15, "target":Ljava/lang/String;
    :goto_2
    if-eqz v11, :cond_3

    array-length v0, v11

    move/from16 v19, v0

    if-eqz v19, :cond_3

    if-nez v15, :cond_5

    .line 59
    :cond_3
    const-string v19, "ASK Hard Translation Parser"

    const-string v20, "Physical translator sequence does not include mandatory fields keySequence or targetChar"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 55
    .end local v15    # "target":Ljava/lang/String;
    :cond_4
    move-object/from16 v15, v16

    .restart local v15    # "target":Ljava/lang/String;
    goto :goto_2

    .line 63
    :cond_5
    if-nez v8, :cond_6

    if-nez v9, :cond_6

    .line 66
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;->addSequence([IC)V

    goto/16 :goto_0

    .line 68
    :cond_6
    if-eqz v8, :cond_7

    .line 70
    const/16 v19, 0x0

    aget v10, v11, v19

    .line 72
    .local v10, "keyCode":I
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v10, v1}, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;->addAltMapping(IC)V

    goto/16 :goto_0

    .line 74
    .end local v10    # "keyCode":I
    :cond_7
    if-eqz v9, :cond_0

    .line 76
    const/16 v19, 0x0

    aget v10, v11, v19

    .line 78
    .restart local v10    # "keyCode":I
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v10, v1}, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;->addShiftMapping(IC)V

    goto/16 :goto_0

    .line 83
    .end local v4    # "attrs":Landroid/util/AttributeSet;
    .end local v8    # "isAlt":Z
    .end local v9    # "isShift":Z
    .end local v10    # "keyCode":I
    .end local v11    # "keyCodes":[I
    .end local v15    # "target":Ljava/lang/String;
    .end local v16    # "targetChar":Ljava/lang/String;
    .end local v17    # "targetCharCode":Ljava/lang/String;
    :cond_8
    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v6, v0, :cond_0

    .line 84
    const-string v19, "PhysicalTranslation"

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 85
    const/4 v7, 0x0

    .line 87
    goto/16 :goto_1

    .line 89
    :cond_9
    if-eqz v7, :cond_0

    const-string v19, "SequenceMapping"

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
