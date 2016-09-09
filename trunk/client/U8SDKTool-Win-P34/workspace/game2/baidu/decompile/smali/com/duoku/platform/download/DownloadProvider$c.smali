.class Lcom/duoku/platform/download/DownloadProvider$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/download/DownloadProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/lang/StringBuilder;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/download/DownloadProvider$c;->a:Ljava/lang/StringBuilder;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/download/DownloadProvider$c;->b:Ljava/util/List;

    .line 154
    return-void
.end method

.method synthetic constructor <init>(Lcom/duoku/platform/download/DownloadProvider$c;)V
    .registers 2

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/duoku/platform/download/DownloadProvider$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadProvider$c;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[TT;)V"
        }
    .end annotation

    .prologue
    .line 173
    if-eqz p1, :cond_8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 191
    :cond_8
    return-void

    .line 177
    :cond_9
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadProvider$c;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_18

    .line 179
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadProvider$c;->a:Ljava/lang/StringBuilder;

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    :cond_18
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadProvider$c;->a:Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadProvider$c;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadProvider$c;->a:Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    if-eqz p2, :cond_8

    .line 186
    array-length v1, p2

    const/4 v0, 0x0

    :goto_2f
    if-ge v0, v1, :cond_8

    aget-object v2, p2, v0

    .line 188
    iget-object v3, p0, Lcom/duoku/platform/download/DownloadProvider$c;->b:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f
.end method

.method public b()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 210
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadProvider$c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 211
    iget-object v1, p0, Lcom/duoku/platform/download/DownloadProvider$c;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
