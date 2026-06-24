.class public Lcom/Abood/html/ActionP;
.super Landroid/preference/Preference;
.source "ActionP.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 17

    invoke-super/range {p0 .. p0}, Landroid/preference/Preference;->onClick()V

    invoke-virtual/range {p0 .. p0}, Lcom/Abood/html/ActionP;->getKey()Ljava/lang/String;

    move-result-object v11

    const/4 v10, -0x1

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v10, :pswitch_data_0

    :goto_1
    return-void

    :sswitch_0
    const-string v12, "cfu"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v10, 0x0

    goto :goto_0

    :sswitch_1
    const-string v12, "reset"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :sswitch_2
    const-string v12, "backup"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v10, 0x2

    goto :goto_0

    :sswitch_3
    const-string v12, "restore"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v10, 0x3

    goto :goto_0

    :sswitch_4
    const-string v12, "share"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v10, 0x4

    goto :goto_0

    :sswitch_5
    const-string v12, "report"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v10, 0x5

    goto :goto_0

    :sswitch_6
    const-string v12, "clemoji"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v10, 0x6

    goto :goto_0

    :sswitch_7
    const-string v12, "credits"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v10, 0x7

    goto :goto_0

    :sswitch_8
    const-string v12, "clogs"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0x8

    goto :goto_0

    :pswitch_0
    new-instance v11, Lkmods/Update;

    invoke-virtual/range {p0 .. p0}, Lcom/Abood/html/ActionP;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v11, v10}, Lkmods/Update;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    check-cast v10, [Ljava/lang/String;

    invoke-virtual {v11, v10}, Lkmods/Update;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/Abood/html/ActionP;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "kmods_privacy"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_1

    :pswitch_2
    new-instance v10, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v11

    const-string v12, "data/com.whatsapp"

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3

    new-instance v10, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    const-string v12, "WhatsApp/KBackup"

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    new-instance v10, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    const-string v12, "WhatsApp/KBackup"

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->mkdir()Z

    :cond_1
    new-instance v10, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    const-string v12, "WhatsApp/KBackup/com.whatsapp"

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_2

    new-instance v10, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    const-string v12, "WhatsApp/KBackup/com.whatsapp"

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->mkdir()Z

    :cond_2
    new-instance v10, Lkmods/CopyTask;

    invoke-virtual/range {p0 .. p0}, Lcom/Abood/html/ActionP;->getContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x1

    new-instance v13, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v14

    const-string v15, "data/com.whatsapp"

    invoke-direct {v13, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v14, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v15

    const-string v16, "WhatsApp/KBackup/com.whatsapp"

    invoke-direct/range {v14 .. v16}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v10, v11, v12, v13, v14}, Lkmods/CopyTask;-><init>(Landroid/content/Context;ZLjava/io/File;Ljava/io/File;)V

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/io/File;

    invoke-virtual {v10, v11}, Lkmods/CopyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/Abood/html/ActionP;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "Can\'t find a Data!"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :pswitch_3
    new-instance v10, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    const-string v12, "WhatsApp/KBackup"

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_4

    new-instance v10, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    const-string v12, "WhatsApp/KBackup/com.whatsapp"

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_4

    new-instance v10, Lkmods/CopyTask;

    invoke-virtual/range {p0 .. p0}, Lcom/Abood/html/ActionP;->getContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x0

    new-instance v13, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v14

    const-string v15, "WhatsApp/KBackup/com.whatsapp"

    invoke-direct {v13, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v14, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v15

    const-string v16, "data/com.whatsapp"

    invoke-direct/range {v14 .. v16}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v10, v11, v12, v13, v14}, Lkmods/CopyTask;-><init>(Landroid/content/Context;ZLjava/io/File;Ljava/io/File;)V

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/io/File;

    invoke-virtual {v10, v11}, Lkmods/CopyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/Abood/html/ActionP;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "Can\'t find a backup in \'/sdcard/WhatsApp/KBackup\'!"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/Abood/html/ActionP;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "ShareBdy"

    const-string v12, "string"

    invoke-static {v11, v12}, Lkmods/Utils;->getResID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v7, Landroid/content/Intent;

    const-string v10, "android.intent.action.SEND"

    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v10, "text/plain"

    invoke-virtual {v7, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "android.intent.extra.SUBJECT"

    invoke-virtual/range {p0 .. p0}, Lcom/Abood/html/ActionP;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "ShareSbj"

    const-string v13, "string"

    invoke-static {v12, v13}, Lkmods/Utils;->getResID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "android.intent.extra.TEXT"

    invoke-virtual {v7, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/Abood/html/ActionP;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/Abood/html/ActionP;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "Share"

    const-string v13, "string"

    invoke-static {v12, v13}, Lkmods/Utils;->getResID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :pswitch_5
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.intent.action.SEND"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v10, "message/rfc822"

    invoke-virtual {v6, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "android.intent.extra.EMAIL"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "patel.kuldip91@gmali.com"

    aput-object v13, v11, v12

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "android.intent.extra.SUBJECT"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "KWhatsApp v"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lkmods/Utils;->v1:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lkmods/Utils;->v2:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "android.intent.extra.TEXT"

    const-string v11, ""

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/Abood/html/ActionP;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "Report..."

    invoke-static {v6, v11}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v4

    invoke-virtual/range {p0 .. p0}, Lcom/Abood/html/ActionP;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "Can\'t find email client."

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :pswitch_6
    new-instance v5, Ljava/io/File;

    const-string v10, "/data/data/com.whatsapp/files/emoji"

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    invoke-virtual/range {p0 .. p0}, Lcom/Abood/html/ActionP;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "All Recent Emojis Cleared"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/Abood/html/ActionP;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "No Recent Emojis There!"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :pswitch_7
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/Abood/html/ActionP;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v2, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v10, "List Thanks"

    invoke-virtual {v2, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v9, Landroid/webkit/WebView;

    invoke-virtual/range {p0 .. p0}, Lcom/Abood/html/ActionP;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const-string v10, "file:///android_asset/credits.html"

    invoke-virtual {v9, v10}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const-string v10, "OK"

    new-instance v11, Lcom/Abood/html/ActionP$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/Abood/html/ActionP$1;-><init>(Lcom/Abood/html/ActionP;)V

    invoke-virtual {v2, v10, v11}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    :pswitch_8
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/Abood/html/ActionP;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v1, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v10, "Changelogs Keyboard"

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Landroid/webkit/WebView;

    invoke-virtual/range {p0 .. p0}, Lcom/Abood/html/ActionP;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v3, v10}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const-string v10, "file:///android_asset/CL.html"

    invoke-virtual {v3, v10}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const-string v10, "OK"

    new-instance v11, Lcom/Abood/html/ActionP$2;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/Abood/html/ActionP$2;-><init>(Lcom/Abood/html/ActionP;)V

    invoke-virtual {v1, v10, v11}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x533f8a3e -> :sswitch_2
        -0x37b3aacc -> :sswitch_5
        0x18072 -> :sswitch_0
        0x5a5dc92 -> :sswitch_8
        0x6761d4f -> :sswitch_1
        0x6854fdf -> :sswitch_4
        0x3316cd7d -> :sswitch_6
        0x3d4fb49a -> :sswitch_7
        0x416ad28e -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
