.class final Lcom/vivo/sdkplugin/Utils/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Z

.field private synthetic d:Lcom/vivo/sdkplugin/Utils/HJDataUtil;


# direct methods
.method public constructor <init>(Lcom/vivo/sdkplugin/Utils/HJDataUtil;I)V
    .registers 4

    iput-object p1, p0, Lcom/vivo/sdkplugin/Utils/k;->d:Lcom/vivo/sdkplugin/Utils/HJDataUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/Utils/k;->c:Z

    iput p2, p0, Lcom/vivo/sdkplugin/Utils/k;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/vivo/sdkplugin/Utils/HJDataUtil;ILjava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/vivo/sdkplugin/Utils/k;->d:Lcom/vivo/sdkplugin/Utils/HJDataUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/Utils/k;->c:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/vivo/sdkplugin/Utils/k;->a:I

    iput-object p3, p0, Lcom/vivo/sdkplugin/Utils/k;->b:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/Utils/k;->c:Z

    return-void
.end method


# virtual methods
.method public final onEmpty()V
    .registers 4

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/k;->d:Lcom/vivo/sdkplugin/Utils/HJDataUtil;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->a(Lcom/vivo/sdkplugin/Utils/HJDataUtil;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "VivoGame.HJDataUtil"

    const-string v1, "onEmpty: is destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_f
    return-void

    :cond_10
    const-string v0, "VivoGame.HJDataUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onEmpty: type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/vivo/sdkplugin/Utils/k;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/Utils/k;->c:Z

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/k;->d:Lcom/vivo/sdkplugin/Utils/HJDataUtil;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->c(Lcom/vivo/sdkplugin/Utils/HJDataUtil;)Lcom/vivo/sdkplugin/Utils/HJDataUtil$RequestListItemListener;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/k;->d:Lcom/vivo/sdkplugin/Utils/HJDataUtil;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->c(Lcom/vivo/sdkplugin/Utils/HJDataUtil;)Lcom/vivo/sdkplugin/Utils/HJDataUtil$RequestListItemListener;

    move-result-object v0

    iget v1, p0, Lcom/vivo/sdkplugin/Utils/k;->a:I

    invoke-interface {v0, v1}, Lcom/vivo/sdkplugin/Utils/HJDataUtil$RequestListItemListener;->onEmpty(I)V

    goto :goto_f

    :cond_3e
    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/k;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/k;->d:Lcom/vivo/sdkplugin/Utils/HJDataUtil;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->b(Lcom/vivo/sdkplugin/Utils/HJDataUtil;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/k;->d:Lcom/vivo/sdkplugin/Utils/HJDataUtil;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->b(Lcom/vivo/sdkplugin/Utils/HJDataUtil;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "VivoGame.HJDataUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onEmpty: key "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/Utils/k;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/k;->d:Lcom/vivo/sdkplugin/Utils/HJDataUtil;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->b(Lcom/vivo/sdkplugin/Utils/HJDataUtil;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/Utils/k;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/sdkplugin/Utils/HJDataUtil$RequestListItemListener;

    if-eqz v0, :cond_f

    iget v1, p0, Lcom/vivo/sdkplugin/Utils/k;->a:I

    invoke-interface {v0, v1}, Lcom/vivo/sdkplugin/Utils/HJDataUtil$RequestListItemListener;->onEmpty(I)V

    goto :goto_f
.end method

.method public final onFailed(IILjava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/k;->d:Lcom/vivo/sdkplugin/Utils/HJDataUtil;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->a(Lcom/vivo/sdkplugin/Utils/HJDataUtil;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "VivoGame.HJDataUtil"

    const-string v1, "onFailed: is destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_f
    return-void

    :cond_10
    const-string v0, "VivoGame.HJDataUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onFailed: type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/vivo/sdkplugin/Utils/k;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

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

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/Utils/k;->c:Z

    if-nez v0, :cond_5c

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/k;->d:Lcom/vivo/sdkplugin/Utils/HJDataUtil;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->c(Lcom/vivo/sdkplugin/Utils/HJDataUtil;)Lcom/vivo/sdkplugin/Utils/HJDataUtil$RequestListItemListener;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/k;->d:Lcom/vivo/sdkplugin/Utils/HJDataUtil;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->c(Lcom/vivo/sdkplugin/Utils/HJDataUtil;)Lcom/vivo/sdkplugin/Utils/HJDataUtil$RequestListItemListener;

    move-result-object v0

    iget v1, p0, Lcom/vivo/sdkplugin/Utils/k;->a:I

    invoke-interface {v0, v1}, Lcom/vivo/sdkplugin/Utils/HJDataUtil$RequestListItemListener;->onFailed(I)V

    goto :goto_f

    :cond_5c
    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/k;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/k;->d:Lcom/vivo/sdkplugin/Utils/HJDataUtil;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->b(Lcom/vivo/sdkplugin/Utils/HJDataUtil;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/k;->d:Lcom/vivo/sdkplugin/Utils/HJDataUtil;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->b(Lcom/vivo/sdkplugin/Utils/HJDataUtil;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "VivoGame.HJDataUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onFailed: key "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/Utils/k;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/k;->d:Lcom/vivo/sdkplugin/Utils/HJDataUtil;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->b(Lcom/vivo/sdkplugin/Utils/HJDataUtil;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/Utils/k;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/sdkplugin/Utils/HJDataUtil$RequestListItemListener;

    if-eqz v0, :cond_f

    iget v1, p0, Lcom/vivo/sdkplugin/Utils/k;->a:I

    invoke-interface {v0, v1}, Lcom/vivo/sdkplugin/Utils/HJDataUtil$RequestListItemListener;->onFailed(I)V

    goto/16 :goto_f
.end method

.method public final onSuccess(JZLjava/util/List;Lcom/huanju/data/content/raw/info/HjAlbumInfo;Ljava/util/List;)V
    .registers 12

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/k;->d:Lcom/vivo/sdkplugin/Utils/HJDataUtil;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->a(Lcom/vivo/sdkplugin/Utils/HJDataUtil;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "VivoGame.HJDataUtil"

    const-string v1, "onSuccess: is destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_f
    return-void

    :cond_10
    :try_start_10
    const-string v0, "VivoGame.HJDataUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSuccess: type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/vivo/sdkplugin/Utils/k;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "tags"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isUseListenerMap"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vivo/sdkplugin/Utils/k;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/Utils/k;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mListItemListenerMap"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/Utils/k;->d:Lcom/vivo/sdkplugin/Utils/HJDataUtil;

    invoke-static {v2}, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->b(Lcom/vivo/sdkplugin/Utils/HJDataUtil;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_92} :catch_c5

    :goto_92
    iget-boolean v0, p0, Lcom/vivo/sdkplugin/Utils/k;->c:Z

    if-nez v0, :cond_ca

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/k;->d:Lcom/vivo/sdkplugin/Utils/HJDataUtil;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->c(Lcom/vivo/sdkplugin/Utils/HJDataUtil;)Lcom/vivo/sdkplugin/Utils/HJDataUtil$RequestListItemListener;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/k;->d:Lcom/vivo/sdkplugin/Utils/HJDataUtil;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->c(Lcom/vivo/sdkplugin/Utils/HJDataUtil;)Lcom/vivo/sdkplugin/Utils/HJDataUtil$RequestListItemListener;

    move-result-object v0

    iget v1, p0, Lcom/vivo/sdkplugin/Utils/k;->a:I

    invoke-interface {v0, v1, p3, p6, p4}, Lcom/vivo/sdkplugin/Utils/HJDataUtil$RequestListItemListener;->onSuccess(IZLjava/lang/Object;Ljava/util/List;)V

    const-string v0, "VivoGame.HJDataUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mListItemListener "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/Utils/k;->d:Lcom/vivo/sdkplugin/Utils/HJDataUtil;

    invoke-static {v2}, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->c(Lcom/vivo/sdkplugin/Utils/HJDataUtil;)Lcom/vivo/sdkplugin/Utils/HJDataUtil$RequestListItemListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    :catch_c5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_92

    :cond_ca
    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/k;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/k;->d:Lcom/vivo/sdkplugin/Utils/HJDataUtil;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->b(Lcom/vivo/sdkplugin/Utils/HJDataUtil;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/k;->d:Lcom/vivo/sdkplugin/Utils/HJDataUtil;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->b(Lcom/vivo/sdkplugin/Utils/HJDataUtil;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "VivoGame.HJDataUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSuccess: key "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/Utils/k;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/k;->d:Lcom/vivo/sdkplugin/Utils/HJDataUtil;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->b(Lcom/vivo/sdkplugin/Utils/HJDataUtil;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/Utils/k;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/sdkplugin/Utils/HJDataUtil$RequestListItemListener;

    if-eqz v0, :cond_f

    const-string v1, "VivoGame.HJDataUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "listener "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/vivo/sdkplugin/Utils/k;->a:I

    invoke-interface {v0, v1, p3, p6, p4}, Lcom/vivo/sdkplugin/Utils/HJDataUtil$RequestListItemListener;->onSuccess(IZLjava/lang/Object;Ljava/util/List;)V

    goto/16 :goto_f
.end method
