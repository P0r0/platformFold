.class public Lcom/duoku/platform/download/mode/GameDownloadInfo;
.super Lcom/duoku/platform/download/mode/BaseAppInfo;
.source "SourceFile"


# static fields
.field public static final GAME_DOWNLOADED:I = 0x3

.field public static final GAME_DOWNLOADING:I = 0x4

.field public static final GAME_DOWNLOADING_FAILED:I = 0x6

.field public static final GAME_DOWNLOADING_PAUSE:I = 0x5

.field public static final GAME_INSTALLED:I = 0x0

.field public static final GAME_PENDING:I = 0x7

.field public static final GAME_UNDOWNLOAD:I = 0x2

.field public static final GAME_UNINSTALL:I = 0x1


# instance fields
.field public apkFile:Ljava/io/File;

.field public game_status:I

.field public isIconLoading:Z

.field public isInit:Z

.field public mCurrentDownloadSize:J

.field public mDownloadPercent:I

.field public mDownloadStatus:Lcom/duoku/platform/download/PackageMode;

.field public mGameSize:J

.field public mQueryInput:Lcom/duoku/platform/download/mode/QueryInput;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/duoku/platform/download/mode/BaseAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/duoku/platform/download/mode/GameDownloadInfo;->game_status:I

    .line 39
    return-void
.end method
