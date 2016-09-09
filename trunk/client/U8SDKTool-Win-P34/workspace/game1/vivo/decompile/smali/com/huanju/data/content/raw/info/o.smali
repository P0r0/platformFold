.class final Lcom/huanju/data/content/raw/info/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/huanju/data/content/raw/info/HjInfoItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/huanju/data/content/raw/info/HjInfoItem;
    .registers 6

    new-instance v1, Lcom/huanju/data/content/raw/info/HjInfoItem;

    invoke-direct {v1}, Lcom/huanju/data/content/raw/info/HjInfoItem;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/huanju/data/content/raw/info/HjInfoItem;->id:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/huanju/data/content/raw/info/HjInfoItem;->access$002(Lcom/huanju/data/content/raw/info/HjInfoItem;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/huanju/data/content/raw/info/HjInfoItem;->game_id:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/huanju/data/content/raw/info/HjInfoItem;->access$102(Lcom/huanju/data/content/raw/info/HjInfoItem;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/huanju/data/content/raw/info/HjInfoItem;->title:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/huanju/data/content/raw/info/HjInfoItem;->access$202(Lcom/huanju/data/content/raw/info/HjInfoItem;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/huanju/data/content/raw/info/HjInfoItem;->source:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/huanju/data/content/raw/info/HjInfoItem;->access$302(Lcom/huanju/data/content/raw/info/HjInfoItem;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/huanju/data/content/raw/info/HjInfoItem;->keywords:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/huanju/data/content/raw/info/HjInfoItem;->access$402(Lcom/huanju/data/content/raw/info/HjInfoItem;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/huanju/data/content/raw/info/HjInfoItem;->thumb_image_list:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/huanju/data/content/raw/info/HjInfoItem;->access$502(Lcom/huanju/data/content/raw/info/HjInfoItem;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/huanju/data/content/raw/info/HjInfoItem;->type_tag:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/huanju/data/content/raw/info/HjInfoItem;->access$602(Lcom/huanju/data/content/raw/info/HjInfoItem;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/huanju/data/content/raw/info/HjInfoItem;->v_cnt:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/huanju/data/content/raw/info/HjInfoItem;->access$702(Lcom/huanju/data/content/raw/info/HjInfoItem;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    # setter for: Lcom/huanju/data/content/raw/info/HjInfoItem;->ctime:J
    invoke-static {v1, v2, v3}, Lcom/huanju/data/content/raw/info/HjInfoItem;->access$802(Lcom/huanju/data/content/raw/info/HjInfoItem;J)J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/huanju/data/content/raw/info/HjInfoItem;->package_name:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/huanju/data/content/raw/info/HjInfoItem;->access$902(Lcom/huanju/data/content/raw/info/HjInfoItem;Ljava/lang/String;)Ljava/lang/String;

    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    # setter for: Lcom/huanju/data/content/raw/info/HjInfoItem;->images:Ljava/util/List;
    invoke-static {v1, v0}, Lcom/huanju/data/content/raw/info/HjInfoItem;->access$1002(Lcom/huanju/data/content/raw/info/HjInfoItem;Ljava/util/List;)Ljava/util/List;

    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    # setter for: Lcom/huanju/data/content/raw/info/HjInfoItem;->keyword:[Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/huanju/data/content/raw/info/HjInfoItem;->access$1102(Lcom/huanju/data/content/raw/info/HjInfoItem;[Ljava/lang/String;)[Ljava/lang/String;

    return-object v1
.end method

.method public a(I)[Lcom/huanju/data/content/raw/info/HjInfoItem;
    .registers 3

    new-array v0, p1, [Lcom/huanju/data/content/raw/info/HjInfoItem;

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/huanju/data/content/raw/info/o;->a(Landroid/os/Parcel;)Lcom/huanju/data/content/raw/info/HjInfoItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/huanju/data/content/raw/info/o;->a(I)[Lcom/huanju/data/content/raw/info/HjInfoItem;

    move-result-object v0

    return-object v0
.end method
