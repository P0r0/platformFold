.class public interface abstract Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onEmpty()V
.end method

.method public abstract onFailed(IILjava/lang/String;)V
.end method

.method public abstract onSuccess(JZLjava/util/List;Lcom/huanju/data/content/raw/info/HjAlbumInfo;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/huanju/data/content/raw/info/HjAlbumInfo;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation
.end method
