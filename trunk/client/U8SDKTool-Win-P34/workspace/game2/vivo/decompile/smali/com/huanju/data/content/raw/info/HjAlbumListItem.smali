.class public Lcom/huanju/data/content/raw/info/HjAlbumListItem;
.super Ljava/lang/Object;


# instance fields
.field private cover:Ljava/lang/String;

.field private desc:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private is_list:Ljava/lang/String;

.field private item_cnt:Ljava/lang/String;

.field private module_id:Ljava/lang/String;

.field private module_type:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private package_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCover()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/HjAlbumListItem;->cover:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/HjAlbumListItem;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/HjAlbumListItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_list()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/HjAlbumListItem;->is_list:Ljava/lang/String;

    return-object v0
.end method

.method public getItem_cnt()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/HjAlbumListItem;->item_cnt:Ljava/lang/String;

    return-object v0
.end method

.method public getModule_id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/HjAlbumListItem;->module_id:Ljava/lang/String;

    return-object v0
.end method

.method public getModule_type()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/HjAlbumListItem;->module_type:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/HjAlbumListItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackage_name()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/HjAlbumListItem;->package_name:Ljava/lang/String;

    return-object v0
.end method

.method public setCover(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/huanju/data/content/raw/info/HjAlbumListItem;->cover:Ljava/lang/String;

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/huanju/data/content/raw/info/HjAlbumListItem;->desc:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/huanju/data/content/raw/info/HjAlbumListItem;->id:Ljava/lang/String;

    return-void
.end method

.method public setIs_list(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/huanju/data/content/raw/info/HjAlbumListItem;->is_list:Ljava/lang/String;

    return-void
.end method

.method public setItem_cnt(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/huanju/data/content/raw/info/HjAlbumListItem;->item_cnt:Ljava/lang/String;

    return-void
.end method

.method public setModule_id(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/huanju/data/content/raw/info/HjAlbumListItem;->module_id:Ljava/lang/String;

    return-void
.end method

.method public setModule_type(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/huanju/data/content/raw/info/HjAlbumListItem;->module_type:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/huanju/data/content/raw/info/HjAlbumListItem;->name:Ljava/lang/String;

    return-void
.end method

.method public setPackage_name(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/huanju/data/content/raw/info/HjAlbumListItem;->package_name:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HjAlbumListItem [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/data/content/raw/info/HjAlbumListItem;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/data/content/raw/info/HjAlbumListItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cover="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/data/content/raw/info/HjAlbumListItem;->cover:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", is_list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/data/content/raw/info/HjAlbumListItem;->is_list:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", module_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/data/content/raw/info/HjAlbumListItem;->module_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", module_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/data/content/raw/info/HjAlbumListItem;->module_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", item_cnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/data/content/raw/info/HjAlbumListItem;->item_cnt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", desc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/data/content/raw/info/HjAlbumListItem;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
