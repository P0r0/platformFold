.class public Lcom/vivo/upgrade/utils/PatchSplitUtil;
.super Ljava/lang/Object;
.source "PatchSplitUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/upgrade/utils/PatchSplitUtil$PatchInfo;
    }
.end annotation


# static fields
.field private static final MD5_SPLIT:Ljava/lang/String; = ":"

.field private static final TAG:Ljava/lang/String; = "Upgrade.PatchSplitUtil"

.field private static final VERSION_SPLIT:Ljava/lang/String; = "_"

.field private static final WHOLE_SPLIT:Ljava/lang/String; = ","


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPatchSplit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/vivo/upgrade/utils/PatchSplitUtil$PatchInfo;
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "patchs"    # Ljava/lang/String;

    .prologue
    .line 53
    const/4 v2, 0x0

    .line 55
    .local v2, "patchInfo":Lcom/vivo/upgrade/utils/PatchSplitUtil$PatchInfo;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1d

    .line 57
    const/4 v1, 0x0

    .line 59
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_8
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 60
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x1

    invoke-virtual {v3, p2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_10} :catch_1e

    move-result-object v1

    .line 65
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :goto_11
    if-eqz v1, :cond_1d

    .line 66
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget v5, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {p0, p3, v4, v5}, Lcom/vivo/upgrade/utils/PatchSplitUtil;->onPatchSplit(Ljava/lang/String;Ljava/lang/String;I)Lcom/vivo/upgrade/utils/PatchSplitUtil$PatchInfo;

    move-result-object v2

    .line 70
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_1d
    return-object v2

    .line 61
    .restart local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_1e
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Upgrade.PatchSplitUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "exception on "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vivo/upgrade/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public onPatchSplit(Ljava/lang/String;Ljava/lang/String;I)Lcom/vivo/upgrade/utils/PatchSplitUtil$PatchInfo;
    .registers 24
    .param p1, "patch"    # Ljava/lang/String;
    .param p2, "sourceDir"    # Ljava/lang/String;
    .param p3, "installedVerCode"    # I

    .prologue
    .line 82
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v9, "packageNewVersion":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v8, "packageNativeVersion":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v12, "packagePatchVersion":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v11, "packagePatchSize":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v10, "packagePatchMd5":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .line 89
    .local v13, "patchInfo":Lcom/vivo/upgrade/utils/PatchSplitUtil$PatchInfo;
    const/4 v3, -0x1

    .line 90
    .local v3, "flag":I
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_8f

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_8f

    .line 92
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    .local v7, "nativeApkfile":Ljava/io/File;
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 94
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 95
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 96
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 97
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 100
    :try_start_3d
    const-string v15, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 102
    .local v6, "multiPatchArray":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_46
    array-length v15, v6
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_47} :catch_10e

    if-lt v4, v15, :cond_90

    .line 129
    .end local v4    # "j":I
    .end local v6    # "multiPatchArray":[Ljava/lang/String;
    :goto_49
    const/4 v15, -0x1

    if-eq v3, v15, :cond_7b

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-le v15, v3, :cond_7b

    .line 131
    new-instance v13, Lcom/vivo/upgrade/utils/PatchSplitUtil$PatchInfo;

    .end local v13    # "patchInfo":Lcom/vivo/upgrade/utils/PatchSplitUtil$PatchInfo;
    invoke-direct {v13}, Lcom/vivo/upgrade/utils/PatchSplitUtil$PatchInfo;-><init>()V

    .line 136
    .restart local v13    # "patchInfo":Lcom/vivo/upgrade/utils/PatchSplitUtil$PatchInfo;
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    iput-object v15, v13, Lcom/vivo/upgrade/utils/PatchSplitUtil$PatchInfo;->patchVersion:Ljava/lang/String;

    .line 141
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v13, Lcom/vivo/upgrade/utils/PatchSplitUtil$PatchInfo;->patchSize:J

    .line 146
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_7b

    .line 147
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    iput-object v15, v13, Lcom/vivo/upgrade/utils/PatchSplitUtil$PatchInfo;->patchMd5:Ljava/lang/String;

    .line 152
    :cond_7b
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 153
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 154
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 155
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 156
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 157
    const/4 v12, 0x0

    .line 158
    const/4 v11, 0x0

    .line 159
    const/4 v9, 0x0

    .line 160
    const/4 v8, 0x0

    .line 161
    const/4 v10, 0x0

    .line 164
    .end local v7    # "nativeApkfile":Ljava/io/File;
    :cond_8f
    return-object v13

    .line 104
    .restart local v4    # "j":I
    .restart local v6    # "multiPatchArray":[Ljava/lang/String;
    .restart local v7    # "nativeApkfile":Ljava/io/File;
    :cond_90
    :try_start_90
    aget-object v15, v6, v4

    const-string v16, ":"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 105
    .local v5, "md5Array":[Ljava/lang/String;
    const/4 v15, 0x0

    aget-object v15, v5, v15

    invoke-virtual {v12, v4, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 106
    const/4 v15, 0x1

    aget-object v15, v5, v15

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    const-wide/16 v18, 0x400

    mul-long v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v11, v4, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 108
    const/4 v15, 0x0

    aget-object v15, v5, v15

    const-string v16, "_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 109
    .local v14, "verArray":[Ljava/lang/String;
    const/4 v15, 0x0

    aget-object v15, v14, v15

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v9, v4, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 110
    const/4 v15, 0x1

    aget-object v15, v14, v15

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v8, v4, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 112
    array-length v15, v5

    const/16 v16, 0x2

    move/from16 v0, v16

    if-le v15, v0, :cond_10a

    .line 113
    const/4 v15, 0x2

    aget-object v15, v5, v15

    invoke-virtual {v10, v4, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 114
    array-length v15, v5

    const/16 v16, 0x3

    move/from16 v0, v16

    if-le v15, v0, :cond_10a

    .line 119
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v18, v0

    cmp-long v15, v16, v18

    if-nez v15, :cond_10a

    const/4 v15, 0x3

    aget-object v15, v5, v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v15, v7, v0}, Lcom/vivo/upgrade/utils/MdFive;->checkMdFive(Ljava/lang/String;Ljava/io/File;Z)Z
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_106} :catch_10e

    move-result v15

    if-eqz v15, :cond_10a

    .line 120
    move v3, v4

    .line 102
    :cond_10a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_46

    .line 125
    .end local v4    # "j":I
    .end local v5    # "md5Array":[Ljava/lang/String;
    .end local v6    # "multiPatchArray":[Ljava/lang/String;
    .end local v14    # "verArray":[Ljava/lang/String;
    :catch_10e
    move-exception v2

    .line 126
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_49
.end method
