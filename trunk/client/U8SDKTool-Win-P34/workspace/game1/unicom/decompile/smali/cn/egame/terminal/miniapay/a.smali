.class public Lcn/egame/terminal/miniapay/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[J)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p6, p0, Lcn/egame/terminal/miniapay/a;->a:Ljava/util/List;

    invoke-static {p5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcn/egame/terminal/miniapay/a;
    .registers 20

    :try_start_0
    new-instance v11, Ljava/io/DataInputStream;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "feeInfo.dat"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v11, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    long-to-int v13, v2

    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v17

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_2e
    move/from16 v0, v17

    if-ge v2, v0, :cond_59

    invoke-virtual {v11}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    div-int/lit8 v6, v3, 0x64

    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v9

    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v10

    new-instance v3, Lcn/egame/terminal/miniapay/b;

    invoke-direct/range {v3 .. v10}, Lcn/egame/terminal/miniapay/b;-><init>(JILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :cond_59
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    new-array v9, v5, [J
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5f} :catch_84

    const/4 v2, 0x0

    move v4, v2

    :goto_61
    if-ge v4, v5, :cond_73

    const-wide/16 v2, 0x0

    :try_start_65
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_6c} :catch_8a

    move-result-wide v2

    :goto_6d
    :try_start_6d
    aput-wide v2, v9, v4

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_61

    :cond_73
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V

    new-instance v2, Lcn/egame/terminal/miniapay/a;

    move-object v3, v12

    move v4, v13

    move-object v5, v14

    move-object v6, v15

    move-object/from16 v7, v16

    move-object/from16 v8, v18

    invoke-direct/range {v2 .. v9}, Lcn/egame/terminal/miniapay/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[J)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_83} :catch_84

    :goto_83
    return-object v2

    :catch_84
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    goto :goto_83

    :catch_8a
    move-exception v6

    goto :goto_6d
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcn/egame/terminal/miniapay/b;
    .registers 5

    iget-object v0, p0, Lcn/egame/terminal/miniapay/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/egame/terminal/miniapay/b;

    iget-object v2, v0, Lcn/egame/terminal/miniapay/b;->c:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method
