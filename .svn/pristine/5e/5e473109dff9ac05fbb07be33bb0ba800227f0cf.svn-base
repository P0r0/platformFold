.class Lmobisocial/omlet/overlaybar/OverlayBarService$4;
.super Ljava/lang/Object;
.source "OverlayBarService.java"

# interfaces
.implements Lmobisocial/omlib/service/util/ServiceRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/OverlayBarService;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmobisocial/omlib/service/util/ServiceRunnable",
        "<",
        "Lmobisocial/omlib/api/OmletApi;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/OverlayBarService;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/OverlayBarService;

    .prologue
    .line 395
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$4;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 395
    check-cast p1, Lmobisocial/omlib/api/OmletApi;

    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/OverlayBarService$4;->run(Lmobisocial/omlib/api/OmletApi;)V

    return-void
.end method

.method public run(Lmobisocial/omlib/api/OmletApi;)V
    .registers 10
    .param p1, "omletApi"    # Lmobisocial/omlib/api/OmletApi;

    .prologue
    .line 399
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$4;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;
    invoke-static {v4}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1200(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lmobisocial/omlet/overlaybar/util/OmpPreferences;->needsVideoMaxLengthMsUpdate(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 400
    const/4 v1, 0x0

    .line 402
    .local v1, "standardPostTagsResponse":Lmobisocial/longdan/LDProtocols$LDGetStandardPostTagsResponse;
    :try_start_d
    check-cast p1, Lmobisocial/omlib/service/OmlibService;

    .end local p1    # "omletApi":Lmobisocial/omlib/api/OmletApi;
    invoke-virtual {p1}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v4

    iget-object v4, v4, Lmobisocial/omlib/client/LongdanClient;->Games:Lmobisocial/omlib/client/ClientGameUtils;

    invoke-virtual {v4}, Lmobisocial/omlib/client/ClientGameUtils;->getStandardPostTags()Lmobisocial/longdan/LDProtocols$LDGetStandardPostTagsResponse;
    :try_end_18
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_d .. :try_end_18} :catch_3e

    move-result-object v1

    .line 406
    :goto_19
    if-eqz v1, :cond_3d

    iget-object v4, v1, Lmobisocial/longdan/LDProtocols$LDGetStandardPostTagsResponse;->MaxVideoLength:Ljava/lang/Double;

    if-eqz v4, :cond_3d

    .line 407
    iget-object v4, v1, Lmobisocial/longdan/LDProtocols$LDGetStandardPostTagsResponse;->MaxVideoLength:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    mul-double/2addr v4, v6

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    double-to-long v2, v4

    .line 408
    .local v2, "maxVideoLengthMs":J
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$4;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;
    invoke-static {v4}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1200(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2, v3}, Lmobisocial/omlet/overlaybar/util/OmpPreferences;->setPrefVideoMaxLengthMs(Landroid/content/Context;J)V

    .line 409
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$4;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # setter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_MaxVideoLengthMs:J
    invoke-static {v4, v2, v3}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1302(Lmobisocial/omlet/overlaybar/OverlayBarService;J)J

    .line 412
    .end local v1    # "standardPostTagsResponse":Lmobisocial/longdan/LDProtocols$LDGetStandardPostTagsResponse;
    .end local v2    # "maxVideoLengthMs":J
    :cond_3d
    return-void

    .line 403
    .restart local v1    # "standardPostTagsResponse":Lmobisocial/longdan/LDProtocols$LDGetStandardPostTagsResponse;
    :catch_3e
    move-exception v0

    .line 404
    .local v0, "e":Lmobisocial/longdan/exception/LongdanException;
    invoke-virtual {v0}, Lmobisocial/longdan/exception/LongdanException;->printStackTrace()V

    goto :goto_19
.end method
