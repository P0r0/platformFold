.class Lcom/vivo/upgrade/AppUpdateInfo;
.super Ljava/lang/Object;
.source "AppUpdateInfo.java"


# instance fields
.field public addTime:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public durl:Ljava/lang/String;

.field public filename:Ljava/lang/String;

.field public level:I

.field public logswitch:I

.field public lowMd5:Ljava/lang/String;

.field public md5:Ljava/lang/String;

.field public mode:I

.field public msg:Ljava/lang/String;

.field public patchFilename:Ljava/lang/String;

.field public patchMd5:Ljava/lang/String;

.field public patchSize:I

.field public patchUrl:Ljava/lang/String;

.field public sendContent:Ljava/lang/String;

.field public sendTitle:Ljava/lang/String;

.field public size:I

.field public stat:I

.field public vercode:I

.field public version:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput v2, p0, Lcom/vivo/upgrade/AppUpdateInfo;->stat:I

    .line 6
    iput v2, p0, Lcom/vivo/upgrade/AppUpdateInfo;->size:I

    .line 7
    iput-object v1, p0, Lcom/vivo/upgrade/AppUpdateInfo;->version:Ljava/lang/String;

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/upgrade/AppUpdateInfo;->vercode:I

    .line 9
    iput-object v1, p0, Lcom/vivo/upgrade/AppUpdateInfo;->msg:Ljava/lang/String;

    .line 10
    iput-object v1, p0, Lcom/vivo/upgrade/AppUpdateInfo;->md5:Ljava/lang/String;

    .line 11
    iput-object v1, p0, Lcom/vivo/upgrade/AppUpdateInfo;->addTime:Ljava/lang/String;

    .line 12
    iput-object v1, p0, Lcom/vivo/upgrade/AppUpdateInfo;->description:Ljava/lang/String;

    .line 13
    iput-object v1, p0, Lcom/vivo/upgrade/AppUpdateInfo;->durl:Ljava/lang/String;

    .line 14
    iput-object v1, p0, Lcom/vivo/upgrade/AppUpdateInfo;->filename:Ljava/lang/String;

    .line 15
    iput v2, p0, Lcom/vivo/upgrade/AppUpdateInfo;->level:I

    .line 16
    iput-object v1, p0, Lcom/vivo/upgrade/AppUpdateInfo;->lowMd5:Ljava/lang/String;

    .line 17
    iput v2, p0, Lcom/vivo/upgrade/AppUpdateInfo;->mode:I

    .line 18
    iput-object v1, p0, Lcom/vivo/upgrade/AppUpdateInfo;->patchFilename:Ljava/lang/String;

    .line 19
    iput-object v1, p0, Lcom/vivo/upgrade/AppUpdateInfo;->patchMd5:Ljava/lang/String;

    .line 20
    iput v2, p0, Lcom/vivo/upgrade/AppUpdateInfo;->patchSize:I

    .line 21
    iput-object v1, p0, Lcom/vivo/upgrade/AppUpdateInfo;->patchUrl:Ljava/lang/String;

    .line 22
    iput v2, p0, Lcom/vivo/upgrade/AppUpdateInfo;->logswitch:I

    .line 3
    return-void
.end method
