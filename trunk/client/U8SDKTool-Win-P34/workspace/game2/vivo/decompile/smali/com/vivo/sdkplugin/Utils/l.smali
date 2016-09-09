.class final Lcom/vivo/sdkplugin/Utils/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener;


# instance fields
.field private a:Ljava/lang/String;

.field private synthetic b:Lcom/vivo/sdkplugin/Utils/HJDataUtil;


# direct methods
.method public constructor <init>(Lcom/vivo/sdkplugin/Utils/HJDataUtil;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/vivo/sdkplugin/Utils/l;->b:Lcom/vivo/sdkplugin/Utils/HJDataUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vivo/sdkplugin/Utils/l;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onFailed(IILjava/lang/String;)V
    .registers 8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/l;->b:Lcom/vivo/sdkplugin/Utils/HJDataUtil;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->a(Lcom/vivo/sdkplugin/Utils/HJDataUtil;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "VivoGame.HJDataUtil"

    const-string v1, "onFailed detail: is destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_10
    return-void

    :cond_11
    const-string v0, "VivoGame.HJDataUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDetailFail:  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/l;->b:Lcom/vivo/sdkplugin/Utils/HJDataUtil;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->d(Lcom/vivo/sdkplugin/Utils/HJDataUtil;)Lcom/vivo/sdkplugin/Utils/HJDataUtil$RequestItemDetailListener;

    move-result-object v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/l;->b:Lcom/vivo/sdkplugin/Utils/HJDataUtil;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->d(Lcom/vivo/sdkplugin/Utils/HJDataUtil;)Lcom/vivo/sdkplugin/Utils/HJDataUtil$RequestItemDetailListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, v3}, Lcom/vivo/sdkplugin/Utils/HJDataUtil$RequestItemDetailListener;->onItemDetail(ZLjava/lang/Object;)V

    :cond_4b
    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/l;->b:Lcom/vivo/sdkplugin/Utils/HJDataUtil;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->e(Lcom/vivo/sdkplugin/Utils/HJDataUtil;)Lcom/vivo/sdkplugin/Utils/HJDataUtil$RequestResUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/l;->b:Lcom/vivo/sdkplugin/Utils/HJDataUtil;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->e(Lcom/vivo/sdkplugin/Utils/HJDataUtil;)Lcom/vivo/sdkplugin/Utils/HJDataUtil$RequestResUpdateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/Utils/l;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/vivo/sdkplugin/Utils/HJDataUtil$RequestResUpdateListener;->onResUpdate(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_10
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/l;->b:Lcom/vivo/sdkplugin/Utils/HJDataUtil;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->a(Lcom/vivo/sdkplugin/Utils/HJDataUtil;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "VivoGame.HJDataUtil"

    const-string v1, "onSuccess detail: is destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/l;->b:Lcom/vivo/sdkplugin/Utils/HJDataUtil;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->d(Lcom/vivo/sdkplugin/Utils/HJDataUtil;)Lcom/vivo/sdkplugin/Utils/HJDataUtil$RequestItemDetailListener;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/l;->b:Lcom/vivo/sdkplugin/Utils/HJDataUtil;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->d(Lcom/vivo/sdkplugin/Utils/HJDataUtil;)Lcom/vivo/sdkplugin/Utils/HJDataUtil$RequestItemDetailListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/vivo/sdkplugin/Utils/HJDataUtil$RequestItemDetailListener;->onItemDetail(ZLjava/lang/Object;)V

    :cond_22
    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/l;->b:Lcom/vivo/sdkplugin/Utils/HJDataUtil;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->e(Lcom/vivo/sdkplugin/Utils/HJDataUtil;)Lcom/vivo/sdkplugin/Utils/HJDataUtil$RequestResUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/l;->b:Lcom/vivo/sdkplugin/Utils/HJDataUtil;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->e(Lcom/vivo/sdkplugin/Utils/HJDataUtil;)Lcom/vivo/sdkplugin/Utils/HJDataUtil$RequestResUpdateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/Utils/l;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/vivo/sdkplugin/Utils/HJDataUtil$RequestResUpdateListener;->onResUpdate(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_f
.end method
