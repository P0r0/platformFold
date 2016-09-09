.class public Lcom/huanju/data/content/raw/video/HjVideoListItem;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/huanju/data/content/raw/video/HjVideoListItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ctime:J

.field public id:Ljava/lang/String;

.field public keywords:[Ljava/lang/String;

.field public package_name:Ljava/lang/String;

.field public previewUrl:Ljava/lang/String;

.field public source:Ljava/lang/String;

.field public tag:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public vcnt:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/huanju/data/content/raw/video/j;

    invoke-direct {v0}, Lcom/huanju/data/content/raw/video/j;-><init>()V

    sput-object v0, Lcom/huanju/data/content/raw/video/HjVideoListItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/data/content/raw/video/HjVideoListItem;->id:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/data/content/raw/video/HjVideoListItem;->title:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/data/content/raw/video/HjVideoListItem;->source:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/data/content/raw/video/HjVideoListItem;->tag:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huanju/data/content/raw/video/HjVideoListItem;->keywords:[Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/data/content/raw/video/HjVideoListItem;->previewUrl:Ljava/lang/String;

    iput-wide v2, p0, Lcom/huanju/data/content/raw/video/HjVideoListItem;->vcnt:J

    iput-wide v2, p0, Lcom/huanju/data/content/raw/video/HjVideoListItem;->ctime:J

    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/data/content/raw/video/HjVideoListItem;->package_name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[videoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/data/content/raw/video/HjVideoListItem;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";videoTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/data/content/raw/video/HjVideoListItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/data/content/raw/video/HjVideoListItem;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";previewUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/data/content/raw/video/HjVideoListItem;->previewUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";updateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";vcnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/huanju/data/content/raw/video/HjVideoListItem;->vcnt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/huanju/data/content/raw/video/HjVideoListItem;->ctime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/data/content/raw/video/HjVideoListItem;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Lcom/huanju/data/content/raw/video/HjVideoListItem;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huanju/data/content/raw/video/HjVideoListItem;->source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huanju/data/content/raw/video/HjVideoListItem;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/huanju/data/content/raw/video/HjVideoListItem;->ctime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/huanju/data/content/raw/video/HjVideoListItem;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huanju/data/content/raw/video/HjVideoListItem;->keywords:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/huanju/data/content/raw/video/HjVideoListItem;->previewUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
