.class public interface abstract Lcom/huanju/data/content/raw/listener/IHjRequestRecommendListListener;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onEmpty()V
.end method

.method public abstract onFailed(IILjava/lang/String;)V
.end method

.method public abstract onSuccess(ZLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lcom/huanju/data/content/raw/info/HjInfoListItem;",
            ">;)V"
        }
    .end annotation
.end method
