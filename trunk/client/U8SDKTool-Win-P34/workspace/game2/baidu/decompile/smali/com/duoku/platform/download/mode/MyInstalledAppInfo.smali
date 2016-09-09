.class public Lcom/duoku/platform/download/mode/MyInstalledAppInfo;
.super Lcom/duoku/platform/download/mode/InstalledAppInfo;
.source "SourceFile"


# instance fields
.field private installDate:J

.field private latestOpenTime:J

.field private openTimes:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .registers 33

    .prologue
    .line 23
    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v17, -0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-wide/from16 v12, p11

    move-object/from16 v16, p13

    invoke-direct/range {v1 .. v17}, Lcom/duoku/platform/download/mode/InstalledAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;ZLjava/lang/String;I)V

    .line 27
    return-void
.end method


# virtual methods
.method public getInstallDate()J
    .registers 3

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/duoku/platform/download/mode/MyInstalledAppInfo;->installDate:J

    return-wide v0
.end method

.method public getLatestOpenTime()J
    .registers 3

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/duoku/platform/download/mode/MyInstalledAppInfo;->latestOpenTime:J

    return-wide v0
.end method

.method public getOpenTimes()I
    .registers 2

    .prologue
    .line 41
    iget v0, p0, Lcom/duoku/platform/download/mode/MyInstalledAppInfo;->openTimes:I

    return v0
.end method

.method public setInstallDate(J)V
    .registers 4

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/duoku/platform/download/mode/MyInstalledAppInfo;->installDate:J

    .line 37
    return-void
.end method

.method public setLatestOpenTime(J)V
    .registers 4

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/duoku/platform/download/mode/MyInstalledAppInfo;->latestOpenTime:J

    .line 57
    return-void
.end method

.method public setOpenTimes(I)V
    .registers 2

    .prologue
    .line 46
    iput p1, p0, Lcom/duoku/platform/download/mode/MyInstalledAppInfo;->openTimes:I

    .line 47
    return-void
.end method
