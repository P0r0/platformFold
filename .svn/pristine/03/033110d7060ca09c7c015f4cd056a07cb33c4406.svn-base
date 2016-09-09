.class public Lmobisocial/omlet/overlaybar/util/EventReportUtil;
.super Ljava/lang/Object;
.source "EventReportUtil.java"


# static fields
.field public static final Event_Click_CancelUpload:Ljava/lang/String; = "click_CancelUpload"

.field public static final Event_Click_Recording:Ljava/lang/String; = "click_Recording"

.field public static final Event_Click_Screenshot:Ljava/lang/String; = "click_Screenshot"

.field public static final Event_Click_Upload:Ljava/lang/String; = "click_Upload"

.field private static final TAG:Ljava/lang/String; = "EventReportUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendEvent(Lmobisocial/omlib/service/OmlibService;Ljava/lang/String;)V
    .registers 5
    .param p0, "omletNetworkService"    # Lmobisocial/omlib/service/OmlibService;
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-virtual {p0}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Games:Lmobisocial/omlib/client/ClientGameUtils;

    invoke-virtual {v0, p1}, Lmobisocial/omlib/client/ClientGameUtils;->singleEventReportRequest(Ljava/lang/String;)V

    .line 29
    const-string v0, "EventReportUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    return-void
.end method

.method public static sendEvent(Lmobisocial/omlib/service/OmlibService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p0, "omletNetworkService"    # Lmobisocial/omlib/service/OmlibService;
    .param p1, "partner"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;

    .prologue
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "event_for_partner":Ljava/lang/String;
    invoke-virtual {p0}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v1

    iget-object v1, v1, Lmobisocial/omlib/client/LongdanClient;->Games:Lmobisocial/omlib/client/ClientGameUtils;

    invoke-virtual {v1, v0}, Lmobisocial/omlib/client/ClientGameUtils;->singleEventReportRequest(Ljava/lang/String;)V

    .line 35
    const-string v1, "EventReportUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    return-void
.end method
