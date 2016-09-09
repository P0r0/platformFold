.class public interface abstract Lcom/huanju/data/content/raw/listener/IHjRequestAlbumListListener;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onEmpty()V
.end method

.method public abstract onFailed(IILjava/lang/String;)V
.end method

.method public abstract onSuccess(JZLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Ljava/util/List",
            "<",
            "Lcom/huanju/data/content/raw/info/HjAlbumListItem;",
            ">;)V"
        }
    .end annotation
.end method
