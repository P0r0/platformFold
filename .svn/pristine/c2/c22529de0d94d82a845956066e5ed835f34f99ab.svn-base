.class Lcom/gionee/gsp/service/GnCommplatformImplForBase$16;
.super Ljava/lang/Object;
.source "GnCommplatformImplForBase.java"

# interfaces
.implements Lcom/gionee/gsp/service/account/sdk/listener/IGetPlayerIdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/gsp/service/GnCommplatformImplForBase;->addYouJuEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$event:Ljava/lang/String;

.field private final synthetic val$map:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase;Ljava/util/Map;Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$16;->this$0:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    iput-object p2, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$16;->val$map:Ljava/util/Map;

    iput-object p3, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$16;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$16;->val$event:Ljava/lang/String;

    .line 1994
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .registers 6
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 2004
    iget-object v0, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$16;->val$map:Ljava/util/Map;

    const-string v1, "playerId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2005
    iget-object v0, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$16;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$16;->val$event:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$16;->val$map:Ljava/util/Map;

    invoke-static {v0, v1, v2, v3}, Lcom/youju/statistics/YouJuAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2006
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .registers 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 2000
    return-void
.end method
