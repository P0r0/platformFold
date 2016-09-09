.class public Lcom/vivo/upgrade/utils/PackageUtils;
.super Ljava/lang/Object;
.source "PackageUtils.java"


# static fields
.field public static final APP_INSTALL_AUTO:I = 0x0

.field public static final APP_INSTALL_EXTERNAL:I = 0x2

.field public static final APP_INSTALL_INTERNAL:I = 0x1

.field public static final DELETE_FAILED_DEVICE_POLICY_MANAGER:I = -0x2

.field public static final DELETE_FAILED_INTERNAL_ERROR:I = -0x1

.field public static final DELETE_FAILED_INVALID_PACKAGE:I = -0x3

.field public static final DELETE_FAILED_PERMISSION_DENIED:I = -0x4

.field public static final DELETE_SUCCEEDED:I = 0x1

.field public static final FILESCHEME:Ljava/lang/String; = "file"

.field public static final INSTALL_FAILED_ALREADY_EXISTS:I = -0x1

.field public static final INSTALL_FAILED_CONFLICTING_PROVIDER:I = -0xd

.field public static final INSTALL_FAILED_CONTAINER_ERROR:I = -0x12

.field public static final INSTALL_FAILED_CPU_ABI_INCOMPATIBLE:I = -0x10

.field public static final INSTALL_FAILED_DEXOPT:I = -0xb

.field public static final INSTALL_FAILED_DUPLICATE_PACKAGE:I = -0x5

.field public static final INSTALL_FAILED_INSUFFICIENT_STORAGE:I = -0x4

.field public static final INSTALL_FAILED_INTERNAL_ERROR:I = -0x6e

.field public static final INSTALL_FAILED_INVALID_APK:I = -0x2

.field public static final INSTALL_FAILED_INVALID_INSTALL_LOCATION:I = -0x13

.field public static final INSTALL_FAILED_INVALID_URI:I = -0x3

.field public static final INSTALL_FAILED_MEDIA_UNAVAILABLE:I = -0x14

.field public static final INSTALL_FAILED_MISSING_FEATURE:I = -0x11

.field public static final INSTALL_FAILED_MISSING_SHARED_LIBRARY:I = -0x9

.field public static final INSTALL_FAILED_NEWER_SDK:I = -0xe

.field public static final INSTALL_FAILED_NO_SHARED_USER:I = -0x6

.field public static final INSTALL_FAILED_OLDER_SDK:I = -0xc

.field public static final INSTALL_FAILED_OTHER:I = -0xf4240

.field public static final INSTALL_FAILED_PACKAGE_CHANGED:I = -0x17

.field public static final INSTALL_FAILED_REPLACE_COULDNT_DELETE:I = -0xa

.field public static final INSTALL_FAILED_SHARED_USER_INCOMPATIBLE:I = -0x8

.field public static final INSTALL_FAILED_TEST_ONLY:I = -0xf

.field public static final INSTALL_FAILED_UID_CHANGED:I = -0x18

.field public static final INSTALL_FAILED_UPDATE_INCOMPATIBLE:I = -0x7

.field public static final INSTALL_FAILED_VERIFICATION_FAILURE:I = -0x16

.field public static final INSTALL_FAILED_VERIFICATION_TIMEOUT:I = -0x15

.field public static final INSTALL_FAILED_VERSION_DOWNGRADE:I = -0x19

.field public static final INSTALL_PARSE_FAILED_BAD_MANIFEST:I = -0x65

.field public static final INSTALL_PARSE_FAILED_BAD_PACKAGE_NAME:I = -0x6a

.field public static final INSTALL_PARSE_FAILED_BAD_SHARED_USER_ID:I = -0x6b

.field public static final INSTALL_PARSE_FAILED_CERTIFICATE_ENCODING:I = -0x69

.field public static final INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES:I = -0x68

.field public static final INSTALL_PARSE_FAILED_MANIFEST_EMPTY:I = -0x6d

.field public static final INSTALL_PARSE_FAILED_MANIFEST_MALFORMED:I = -0x6c

.field public static final INSTALL_PARSE_FAILED_NOT_APK:I = -0x64

.field public static final INSTALL_PARSE_FAILED_NO_CERTIFICATES:I = -0x67

.field public static final INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION:I = -0x66

.field public static final INSTALL_SUCCEEDED:I = 0x1

.field public static final PKGSCHEME:Ljava/lang/String; = "package"

.field public static final TAG:Ljava/lang/String; = "Upgrade.PackageUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppVersionCode(Landroid/content/Context;)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 540
    if-eqz p0, :cond_1a

    .line 541
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 542
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_1a

    .line 545
    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 546
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_1a

    .line 547
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_15} :catch_16

    .line 554
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_15
    return v3

    .line 549
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :catch_16
    move-exception v0

    .line 550
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 554
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_1a
    const/4 v3, -0x1

    goto :goto_15
.end method

.method public static getInstallLocation()I
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 567
    const-string v5, "LD_LIBRARY_PATH=/vendor/lib:/system/lib pm get-install-location"

    .line 566
    invoke-static {v5, v4, v3}, Lcom/vivo/upgrade/utils/ShellUtils;->execCommand(Ljava/lang/String;ZZ)Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;

    move-result-object v0

    .line 569
    .local v0, "commandResult":Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;
    iget v5, v0, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;->result:I

    if-nez v5, :cond_27

    iget-object v5, v0, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    if-eqz v5, :cond_27

    .line 570
    iget-object v5, v0, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_27

    .line 572
    :try_start_18
    iget-object v5, v0, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    .line 573
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 572
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_23} :catch_2b

    move-result v2

    .line 574
    .local v2, "location":I
    packed-switch v2, :pswitch_data_38

    .end local v2    # "location":I
    :cond_27
    :goto_27
    move v3, v4

    .line 585
    :goto_28
    :pswitch_28
    return v3

    .line 578
    .restart local v2    # "location":I
    :pswitch_29
    const/4 v3, 0x2

    goto :goto_28

    .line 580
    .end local v2    # "location":I
    :catch_2b
    move-exception v1

    .line 581
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 582
    const-string v3, "Upgrade.PackageUtils"

    const-string v5, "pm get-install-location error"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 574
    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_28
        :pswitch_29
    .end packed-switch
.end method

.method private static getInstallLocationParams()Ljava/lang/String;
    .registers 2

    .prologue
    .line 594
    invoke-static {}, Lcom/vivo/upgrade/utils/PackageUtils;->getInstallLocation()I

    move-result v0

    .line 595
    .local v0, "location":I
    packed-switch v0, :pswitch_data_10

    .line 601
    const-string v1, ""

    :goto_9
    return-object v1

    .line 597
    :pswitch_a
    const-string v1, "-f"

    goto :goto_9

    .line 599
    :pswitch_d
    const-string v1, "-s"

    goto :goto_9

    .line 595
    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_a
        :pswitch_d
    .end packed-switch
.end method

.method public static final install(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-static {p0}, Lcom/vivo/upgrade/utils/PackageUtils;->isSystemApplication(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 79
    invoke-static {}, Lcom/vivo/upgrade/utils/ShellUtils;->checkVivoRootPermission()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 80
    :cond_c
    invoke-static {p0, p1}, Lcom/vivo/upgrade/utils/PackageUtils;->installSilent(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 82
    :goto_10
    return v0

    :cond_11
    invoke-static {p0, p1}, Lcom/vivo/upgrade/utils/PackageUtils;->installNormal(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_10

    .line 83
    :cond_19
    const/4 v0, -0x3

    goto :goto_10
.end method

.method public static installApk(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 278
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 279
    .local v0, "apkfile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_c

    .line 286
    :goto_b
    return-void

    .line 282
    :cond_c
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 283
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_b
.end method

.method public static installNormal(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 95
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    .local v1, "i":Landroid/content/Intent;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_24

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_26

    .line 98
    :cond_24
    const/4 v2, 0x0

    .line 104
    :goto_25
    return v2

    .line 101
    :cond_26
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 103
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 104
    const/4 v2, 0x1

    goto :goto_25
.end method

.method public static installSilent(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " -r "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vivo/upgrade/utils/PackageUtils;->getInstallLocationParams()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/vivo/upgrade/utils/PackageUtils;->installSilent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static installSilent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "pmParams"    # Ljava/lang/String;

    .prologue
    const v2, -0xf4240

    const/4 v3, -0x3

    .line 150
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_e

    :cond_c
    move v2, v3

    .line 274
    :cond_d
    :goto_d
    return v2

    .line 154
    :cond_e
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2b

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_2d

    :cond_2b
    move v2, v3

    .line 156
    goto :goto_d

    .line 159
    :cond_2d
    invoke-static {p1}, Lcom/vivo/upgrade/utils/ShellUtils;->execCommand(Ljava/lang/String;)Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;

    move-result-object v0

    .line 160
    .local v0, "commandResult":Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;
    iget-object v4, v0, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    if-eqz v4, :cond_4b

    iget-object v4, v0, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    const-string v5, "Success"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_49

    iget-object v4, v0, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    const-string v5, "success"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 161
    :cond_49
    const/4 v2, 0x1

    goto :goto_d

    .line 163
    :cond_4b
    const-string v4, "Upgrade.PackageUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "commandResult = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const-string v4, "Upgrade.PackageUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "installSilent successMsg:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ErrorMsg:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v4, v0, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    if-eqz v4, :cond_d

    .line 169
    iget-object v4, v0, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v5, "INSTALL_FAILED_ALREADY_EXISTS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_96

    .line 170
    const/4 v2, -0x1

    goto/16 :goto_d

    .line 172
    :cond_96
    iget-object v4, v0, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v5, "INSTALL_FAILED_INVALID_APK"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a3

    .line 173
    const/4 v2, -0x2

    goto/16 :goto_d

    .line 175
    :cond_a3
    iget-object v4, v0, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v5, "INSTALL_FAILED_INVALID_URI"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b0

    move v2, v3

    .line 176
    goto/16 :goto_d

    .line 178
    :cond_b0
    iget-object v3, v0, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_INSUFFICIENT_STORAGE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_bd

    .line 179
    const/4 v2, -0x4

    goto/16 :goto_d

    .line 181
    :cond_bd
    iget-object v3, v0, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_DUPLICATE_PACKAGE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_ca

    .line 182
    const/4 v2, -0x5

    goto/16 :goto_d

    .line 184
    :cond_ca
    iget-object v3, v0, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_NO_SHARED_USER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d7

    .line 185
    const/4 v2, -0x6

    goto/16 :goto_d

    .line 187
    :cond_d7
    iget-object v3, v0, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_UPDATE_INCOMPATIBLE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e4

    .line 188
    const/4 v2, -0x7

    goto/16 :goto_d

    .line 190
    :cond_e4
    iget-object v3, v0, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_SHARED_USER_INCOMPATIBLE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f1

    .line 191
    const/4 v2, -0x8

    goto/16 :goto_d

    .line 193
    :cond_f1
    iget-object v3, v0, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_MISSING_SHARED_LIBRARY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_ff

    .line 194
    const/16 v2, -0x9

    goto/16 :goto_d

    .line 196
    :cond_ff
    iget-object v3, v0, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_REPLACE_COULDNT_DELETE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10d

    .line 197
    const/16 v2, -0xa

    goto/16 :goto_d

    .line 199
    :cond_10d
    iget-object v3, v0, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_DEXOPT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11b

    .line 200
    const/16 v2, -0xb

    goto/16 :goto_d

    .line 202
    :cond_11b
    iget-object v3, v0, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_OLDER_SDK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_129

    .line 203
    const/16 v2, -0xc

    goto/16 :goto_d

    .line 205
    :cond_129
    iget-object v3, v0, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_CONFLICTING_PROVIDER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_137

    .line 206
    const/16 v2, -0xd

    goto/16 :goto_d

    .line 208
    :cond_137
    iget-object v3, v0, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_NEWER_SDK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_145

    .line 209
    const/16 v2, -0xe

    goto/16 :goto_d

    .line 211
    :cond_145
    iget-object v3, v0, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_TEST_ONLY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_153

    .line 212
    const/16 v2, -0xf

    goto/16 :goto_d

    .line 214
    :cond_153
    iget-object v3, v0, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_CPU_ABI_INCOMPATIBLE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_161

    .line 215
    const/16 v2, -0x10

    goto/16 :goto_d

    .line 217
    :cond_161
    iget-object v3, v0, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_MISSING_FEATURE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_16f

    .line 218
    const/16 v2, -0x11

    goto/16 :goto_d

    .line 220
    :cond_16f
    iget-object v3, v0, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_CONTAINER_ERROR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_17d

    .line 221
    const/16 v2, -0x12

    goto/16 :goto_d

    .line 223
    :cond_17d
    iget-object v3, v0, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_INVALID_INSTALL_LOCATION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_18b

    .line 224
    const/16 v2, -0x13

    goto/16 :goto_d

    .line 226
    :cond_18b
    iget-object v3, v0, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_MEDIA_UNAVAILABLE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_199

    .line 227
    const/16 v2, -0x14

    goto/16 :goto_d

    .line 229
    :cond_199
    iget-object v3, v0, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_VERIFICATION_TIMEOUT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a7

    .line 230
    const/16 v2, -0x15

    goto/16 :goto_d

    .line 232
    :cond_1a7
    iget-object v3, v0, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_VERIFICATION_FAILURE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1b5

    .line 233
    const/16 v2, -0x16

    goto/16 :goto_d

    .line 235
    :cond_1b5
    iget-object v3, v0, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_PACKAGE_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1c3

    .line 236
    const/16 v2, -0x17

    goto/16 :goto_d

    .line 238
    :cond_1c3
    iget-object v3, v0, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_UID_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1d1

    .line 239
    const/16 v2, -0x18

    goto/16 :goto_d

    .line 241
    :cond_1d1
    iget-object v3, v0, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_PARSE_FAILED_NOT_APK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1df

    .line 242
    const/16 v2, -0x64

    goto/16 :goto_d

    .line 244
    :cond_1df
    iget-object v3, v0, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_PARSE_FAILED_BAD_MANIFEST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1ed

    .line 245
    const/16 v2, -0x65

    goto/16 :goto_d

    .line 247
    :cond_1ed
    iget-object v3, v0, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1fb

    .line 248
    const/16 v2, -0x66

    goto/16 :goto_d

    .line 250
    :cond_1fb
    iget-object v3, v0, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_PARSE_FAILED_NO_CERTIFICATES"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_209

    .line 251
    const/16 v2, -0x67

    goto/16 :goto_d

    .line 253
    :cond_209
    iget-object v3, v0, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_217

    .line 254
    const/16 v2, -0x68

    goto/16 :goto_d

    .line 256
    :cond_217
    iget-object v3, v0, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_PARSE_FAILED_CERTIFICATE_ENCODING"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_225

    .line 257
    const/16 v2, -0x69

    goto/16 :goto_d

    .line 259
    :cond_225
    iget-object v3, v0, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_PARSE_FAILED_BAD_PACKAGE_NAME"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_233

    .line 260
    const/16 v2, -0x6a

    goto/16 :goto_d

    .line 262
    :cond_233
    iget-object v3, v0, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_PARSE_FAILED_BAD_SHARED_USER_ID"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_241

    .line 263
    const/16 v2, -0x6b

    goto/16 :goto_d

    .line 265
    :cond_241
    iget-object v3, v0, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_PARSE_FAILED_MANIFEST_MALFORMED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_24f

    .line 266
    const/16 v2, -0x6c

    goto/16 :goto_d

    .line 268
    :cond_24f
    iget-object v3, v0, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_PARSE_FAILED_MANIFEST_EMPTY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_25d

    .line 269
    const/16 v2, -0x6d

    goto/16 :goto_d

    .line 271
    :cond_25d
    iget-object v3, v0, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_INTERNAL_ERROR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 272
    const/16 v2, -0x6e

    goto/16 :goto_d
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 513
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public static isEmpty(Ljava/util/List;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 530
    .local p0, "sourceList":Ljava/util/List;, "Ljava/util/List<TV;>;"
    if-eqz p0, :cond_a

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public static isSystemApplication(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 412
    if-nez p0, :cond_4

    .line 413
    const/4 v0, 0x0

    .line 416
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/vivo/upgrade/utils/PackageUtils;->isSystemApplication(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_3
.end method

.method public static isSystemApplication(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 428
    if-nez p0, :cond_4

    .line 429
    const/4 v0, 0x0

    .line 432
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/vivo/upgrade/utils/PackageUtils;->isSystemApplication(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    goto :goto_3
.end method

.method public static isSystemApplication(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .registers 6
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 450
    if-eqz p0, :cond_b

    if-eqz p1, :cond_b

    .line 451
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_c

    .line 462
    :cond_b
    :goto_b
    return v2

    .line 457
    :cond_c
    const/4 v3, 0x0

    .line 456
    :try_start_d
    invoke-virtual {p0, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 458
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_b

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_15} :catch_1b

    and-int/lit8 v3, v3, 0x1

    if-lez v3, :cond_b

    const/4 v2, 0x1

    goto :goto_b

    .line 459
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    :catch_1b
    move-exception v1

    .line 460
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_b
.end method

.method public static isTopActivity(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 480
    if-eqz p0, :cond_9

    invoke-static {p1}, Lcom/vivo/upgrade/utils/PackageUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 481
    :cond_9
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 495
    :goto_d
    return-object v3

    .line 485
    :cond_e
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 484
    check-cast v0, Landroid/app/ActivityManager;

    .line 486
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 487
    .local v2, "tasksInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-static {v2}, Lcom/vivo/upgrade/utils/PackageUtils;->isEmpty(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 488
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_d

    .line 491
    :cond_26
    const/4 v3, 0x0

    :try_start_27
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 492
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 491
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_3a} :catch_3c

    move-result-object v3

    goto :goto_d

    .line 493
    :catch_3c
    move-exception v1

    .line 494
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 495
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_d
.end method

.method public static startInstalledAppDetails(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 612
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 613
    .local v0, "intent":Landroid/content/Intent;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 614
    .local v1, "sdkVersion":I
    const/16 v2, 0x9

    if-lt v1, v2, :cond_23

    .line 615
    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 616
    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 624
    :goto_1a
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 625
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 626
    return-void

    .line 618
    :cond_23
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 619
    const-string v2, "com.android.settings"

    .line 620
    const-string v3, "com.android.settings.InstalledAppDetails"

    .line 619
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 621
    const/16 v2, 0x8

    if-ne v1, v2, :cond_39

    const-string v2, "pkg"

    :goto_35
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1a

    .line 622
    :cond_39
    const-string v2, "com.android.settings.ApplicationPkgName"

    goto :goto_35
.end method

.method public static final uninstall(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 303
    invoke-static {p0}, Lcom/vivo/upgrade/utils/PackageUtils;->isSystemApplication(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 304
    invoke-static {}, Lcom/vivo/upgrade/utils/ShellUtils;->checkVivoRootPermission()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 305
    :cond_c
    invoke-static {p0, p1}, Lcom/vivo/upgrade/utils/PackageUtils;->uninstallSilent(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 307
    :goto_10
    return v0

    :cond_11
    invoke-static {p0, p1}, Lcom/vivo/upgrade/utils/PackageUtils;->uninstallNormal(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_10

    .line 308
    :cond_19
    const/4 v0, -0x3

    goto :goto_10
.end method

.method public static uninstallNormal(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 320
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    .line 321
    :cond_8
    const/4 v1, 0x0

    .line 329
    :goto_9
    return v1

    .line 324
    :cond_a
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DELETE"

    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 326
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 325
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 324
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 327
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 328
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 329
    const/4 v1, 0x1

    goto :goto_9
.end method

.method public static uninstallSilent(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 342
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/vivo/upgrade/utils/PackageUtils;->uninstallSilent(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static uninstallSilent(Landroid/content/Context;Ljava/lang/String;Z)I
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isKeepData"    # Z

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 371
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_c

    .line 372
    :cond_a
    const/4 v3, -0x3

    .line 402
    :cond_b
    :goto_b
    return v3

    .line 380
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 381
    const-string v5, "pm uninstall"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 382
    if-eqz p2, :cond_8a

    const-string v2, " -k "

    :goto_1b
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 383
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v2, v6, :cond_8d

    const-string v2, " --user 0 "

    :goto_27
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 384
    const-string v5, " "

    const-string v6, "\\ "

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 386
    .local v0, "command":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0}, Lcom/vivo/upgrade/utils/PackageUtils;->isSystemApplication(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_90

    const/4 v2, 0x0

    .line 385
    :goto_42
    invoke-static {v5, v2, v3}, Lcom/vivo/upgrade/utils/ShellUtils;->execCommand(Ljava/lang/String;ZZ)Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;

    move-result-object v1

    .line 387
    .local v1, "commandResult":Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;
    iget-object v2, v1, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    if-eqz v2, :cond_5e

    .line 388
    iget-object v2, v1, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    const-string v5, "Success"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, v1, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    .line 389
    const-string v5, "success"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 392
    :cond_5e
    const-string v2, "Upgrade.PackageUtils"

    .line 393
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uninstallSilent successMsg:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 394
    iget-object v5, v1, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", ErrorMsg:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 395
    iget-object v5, v1, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 392
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v2, v1, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    if-nez v2, :cond_92

    move v3, v4

    .line 397
    goto :goto_b

    .line 382
    .end local v0    # "command":Ljava/lang/StringBuilder;
    .end local v1    # "commandResult":Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;
    :cond_8a
    const-string v2, " "

    goto :goto_1b

    .line 383
    :cond_8d
    const-string v2, " "

    goto :goto_27

    .restart local v0    # "command":Ljava/lang/StringBuilder;
    :cond_90
    move v2, v3

    .line 386
    goto :goto_42

    .line 399
    .restart local v1    # "commandResult":Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;
    :cond_92
    iget-object v2, v1, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v3, "Permission denied"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9f

    .line 400
    const/4 v3, -0x4

    goto/16 :goto_b

    :cond_9f
    move v3, v4

    .line 402
    goto/16 :goto_b
.end method
