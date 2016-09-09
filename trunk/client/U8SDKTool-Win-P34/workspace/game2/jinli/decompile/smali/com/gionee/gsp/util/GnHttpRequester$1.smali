.class Lcom/gionee/gsp/util/GnHttpRequester$1;
.super Ljava/lang/Object;
.source "GnHttpRequester.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/gsp/util/GnHttpRequester;->downloadAppForStandalone(Landroid/app/Activity;Ljava/lang/String;Ljava/io/FileOutputStream;Ljava/io/File;Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$gnDownloadListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;

.field private final synthetic val$progressUpdate:I


# direct methods
.method constructor <init>(Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;I)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gionee/gsp/util/GnHttpRequester$1;->val$gnDownloadListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;

    iput p2, p0, Lcom/gionee/gsp/util/GnHttpRequester$1;->val$progressUpdate:I

    .line 600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 604
    iget-object v0, p0, Lcom/gionee/gsp/util/GnHttpRequester$1;->val$gnDownloadListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;

    iget v1, p0, Lcom/gionee/gsp/util/GnHttpRequester$1;->val$progressUpdate:I

    invoke-virtual {v0, v1}, Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;->onProgressUpdate(I)V

    .line 605
    return-void
.end method
