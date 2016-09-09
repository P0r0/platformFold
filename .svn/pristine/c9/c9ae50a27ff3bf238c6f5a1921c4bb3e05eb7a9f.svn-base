.class public Lcom/huanju/data/content/raw/f;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/huanju/data/a/b;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "HjRawDataTransactionProxy"

    invoke-static {v0}, Lcom/huanju/data/a/b;->a(Ljava/lang/String;)Lcom/huanju/data/a/b;

    move-result-object v0

    sput-object v0, Lcom/huanju/data/content/raw/f;->a:Lcom/huanju/data/a/b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huanju/data/content/raw/f;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/data/content/raw/f;->b:Landroid/content/Context;

    return-void
.end method

.method private a(Lcom/huanju/data/content/raw/HjRequestFrom;)I
    .registers 5

    const/4 v0, 0x0

    sget-object v1, Lcom/huanju/data/content/raw/d;->a:[I

    invoke-virtual {p1}, Lcom/huanju/data/content/raw/HjRequestFrom;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1a

    :goto_c
    :pswitch_c
    return v0

    :pswitch_d
    const/4 v0, 0x2

    goto :goto_c

    :pswitch_f
    const/4 v0, 0x1

    goto :goto_c

    :pswitch_11
    const/4 v0, 0x3

    goto :goto_c

    :pswitch_13
    const/4 v0, 0x4

    goto :goto_c

    :pswitch_15
    const/4 v0, 0x6

    goto :goto_c

    :pswitch_17
    const/4 v0, 0x5

    goto :goto_c

    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_11
        :pswitch_13
        :pswitch_15
        :pswitch_17
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/huanju/data/content/raw/listener/HjRequestBatchListListener;Ljava/util/ArrayList;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/data/content/raw/listener/HjRequestBatchListListener",
            "<",
            "Lcom/huanju/data/content/raw/info/HjBatchVideoItem;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    new-instance v0, Lcom/huanju/data/content/raw/info/s;

    iget-object v1, p0, Lcom/huanju/data/content/raw/f;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p3, p2}, Lcom/huanju/data/content/raw/info/s;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    invoke-virtual {v0, p1}, Lcom/huanju/data/content/raw/info/s;->a(Lcom/huanju/data/content/raw/listener/HjRequestBatchListListener;)V

    invoke-virtual {v0}, Lcom/huanju/data/content/raw/info/s;->process()V

    return-void
.end method

.method public a(Lcom/huanju/data/content/raw/listener/HjRequestBatchListListener;Ljava/util/ArrayList;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/data/content/raw/listener/HjRequestBatchListListener",
            "<",
            "Lcom/huanju/data/content/raw/info/HjBatchInfoItem;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    new-instance v0, Lcom/huanju/data/content/raw/info/m;

    iget-object v1, p0, Lcom/huanju/data/content/raw/f;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p3, p4, p2}, Lcom/huanju/data/content/raw/info/m;-><init>(Landroid/content/Context;IILjava/util/ArrayList;)V

    invoke-virtual {v0, p1}, Lcom/huanju/data/content/raw/info/m;->a(Lcom/huanju/data/content/raw/listener/HjRequestBatchListListener;)V

    invoke-virtual {v0}, Lcom/huanju/data/content/raw/info/m;->process()V

    return-void
.end method

.method public a(Lcom/huanju/data/content/raw/listener/IHjRequestAlbumListListener;IILcom/huanju/data/content/raw/HjRequestFrom;)V
    .registers 8

    new-instance v0, Lcom/huanju/data/content/raw/info/g;

    iget-object v1, p0, Lcom/huanju/data/content/raw/f;->b:Landroid/content/Context;

    invoke-direct {p0, p4}, Lcom/huanju/data/content/raw/f;->a(Lcom/huanju/data/content/raw/HjRequestFrom;)I

    move-result v2

    invoke-direct {v0, v1, p2, p3, v2}, Lcom/huanju/data/content/raw/info/g;-><init>(Landroid/content/Context;III)V

    invoke-virtual {v0, p1}, Lcom/huanju/data/content/raw/info/g;->a(Lcom/huanju/data/content/raw/listener/IHjRequestAlbumListListener;)V

    invoke-virtual {v0}, Lcom/huanju/data/content/raw/info/g;->process()V

    return-void
.end method

.method public a(Lcom/huanju/data/content/raw/listener/IHjRequestGalleryDetailListener;Ljava/lang/String;Lcom/huanju/data/content/raw/HjRequestFrom;)V
    .registers 7

    new-instance v0, Lcom/huanju/data/content/raw/info/c;

    iget-object v1, p0, Lcom/huanju/data/content/raw/f;->b:Landroid/content/Context;

    invoke-direct {p0, p3}, Lcom/huanju/data/content/raw/f;->a(Lcom/huanju/data/content/raw/HjRequestFrom;)I

    move-result v2

    invoke-direct {v0, v1, p2, v2}, Lcom/huanju/data/content/raw/info/c;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0, p1}, Lcom/huanju/data/content/raw/info/c;->a(Lcom/huanju/data/content/raw/listener/IHjRequestGalleryDetailListener;)V

    invoke-virtual {v0}, Lcom/huanju/data/content/raw/info/c;->process()V

    return-void
.end method

.method public a(Lcom/huanju/data/content/raw/listener/IHjRequestGalleryListListener;IILcom/huanju/data/content/raw/HjRequestFrom;)V
    .registers 8

    new-instance v0, Lcom/huanju/data/content/raw/info/j;

    iget-object v1, p0, Lcom/huanju/data/content/raw/f;->b:Landroid/content/Context;

    invoke-direct {p0, p4}, Lcom/huanju/data/content/raw/f;->a(Lcom/huanju/data/content/raw/HjRequestFrom;)I

    move-result v2

    invoke-direct {v0, v1, p3, p2, v2}, Lcom/huanju/data/content/raw/info/j;-><init>(Landroid/content/Context;III)V

    invoke-virtual {v0, p1}, Lcom/huanju/data/content/raw/info/j;->a(Lcom/huanju/data/content/raw/listener/IHjRequestGalleryListListener;)V

    invoke-virtual {v0}, Lcom/huanju/data/content/raw/info/j;->process()V

    return-void
.end method

.method public a(Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener",
            "<",
            "Lcom/huanju/data/content/raw/utility/HjGameResInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/huanju/data/content/raw/f;->a:Lcom/huanju/data/a/b;

    const-string v1, "requestResourceStatus"

    invoke-virtual {v0, v1}, Lcom/huanju/data/a/b;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/huanju/data/content/raw/utility/HjRequestResStatusProcessor;

    iget-object v1, p0, Lcom/huanju/data/content/raw/f;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/huanju/data/content/raw/utility/HjRequestResStatusProcessor;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/huanju/data/content/raw/utility/HjRequestResStatusProcessor;->setListener(Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener;)V

    invoke-virtual {v0}, Lcom/huanju/data/content/raw/utility/HjRequestResStatusProcessor;->process()V

    return-void
.end method

.method public a(Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener;Ljava/lang/String;Lcom/huanju/data/content/raw/HjRequestFrom;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener",
            "<",
            "Lcom/huanju/data/content/raw/video/HjVideoDetail;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/huanju/data/content/raw/HjRequestFrom;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/huanju/data/content/raw/f;->a:Lcom/huanju/data/a/b;

    const-string v1, "requestVideoDetail"

    invoke-virtual {v0, v1}, Lcom/huanju/data/a/b;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/huanju/data/content/raw/video/f;

    iget-object v1, p0, Lcom/huanju/data/content/raw/f;->b:Landroid/content/Context;

    invoke-direct {p0, p3}, Lcom/huanju/data/content/raw/f;->a(Lcom/huanju/data/content/raw/HjRequestFrom;)I

    move-result v2

    invoke-direct {v0, v1, p2, v2}, Lcom/huanju/data/content/raw/video/f;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0, p1}, Lcom/huanju/data/content/raw/video/f;->a(Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener;)V

    invoke-virtual {v0}, Lcom/huanju/data/content/raw/video/f;->process()V

    return-void
.end method

.method public a(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;ILjava/lang/String;IILcom/huanju/data/content/raw/HjRequestFrom;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener",
            "<",
            "Lcom/huanju/data/content/raw/info/HjInfoListItem;",
            ">;I",
            "Ljava/lang/String;",
            "II",
            "Lcom/huanju/data/content/raw/HjRequestFrom;",
            ")V"
        }
    .end annotation

    new-instance v1, Lcom/huanju/data/content/raw/info/ao;

    iget-object v2, p0, Lcom/huanju/data/content/raw/f;->b:Landroid/content/Context;

    const-string v4, ""

    const-string v5, ""

    move-object/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/huanju/data/content/raw/f;->a(Lcom/huanju/data/content/raw/HjRequestFrom;)I

    move-result v9

    const/4 v10, 0x0

    move v3, p2

    move-object v6, p3

    move v7, p4

    move/from16 v8, p5

    invoke-direct/range {v1 .. v10}, Lcom/huanju/data/content/raw/info/ao;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)V

    invoke-virtual {v1, p1}, Lcom/huanju/data/content/raw/info/ao;->a(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;)V

    invoke-virtual {v1}, Lcom/huanju/data/content/raw/info/ao;->process()V

    return-void
.end method

.method public a(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILcom/huanju/data/content/raw/HjRequestFrom;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener",
            "<",
            "Lcom/huanju/data/content/raw/info/HjInfoListItem;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Lcom/huanju/data/content/raw/HjRequestFrom;",
            ")V"
        }
    .end annotation

    sget-object v1, Lcom/huanju/data/content/raw/f;->a:Lcom/huanju/data/a/b;

    const-string v2, "requestInfoList"

    invoke-virtual {v1, v2}, Lcom/huanju/data/a/b;->b(Ljava/lang/String;)V

    new-instance v1, Lcom/huanju/data/content/raw/info/ae;

    iget-object v2, p0, Lcom/huanju/data/content/raw/f;->b:Landroid/content/Context;

    move-object/from16 v0, p9

    invoke-direct {p0, v0}, Lcom/huanju/data/content/raw/f;->a(Lcom/huanju/data/content/raw/HjRequestFrom;)I

    move-result v10

    move v3, p2

    move/from16 v4, p6

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lcom/huanju/data/content/raw/info/ae;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    invoke-virtual {v1, p1}, Lcom/huanju/data/content/raw/info/ae;->a(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;)V

    invoke-virtual {v1}, Lcom/huanju/data/content/raw/info/ae;->process()V

    return-void
.end method

.method public a(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/huanju/data/content/raw/HjRequestFrom;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener",
            "<",
            "Lcom/huanju/data/content/raw/info/HjInfoListItem;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/huanju/data/content/raw/HjRequestFrom;",
            ")V"
        }
    .end annotation

    new-instance v1, Lcom/huanju/data/content/raw/info/ao;

    iget-object v2, p0, Lcom/huanju/data/content/raw/f;->b:Landroid/content/Context;

    move-object/from16 v0, p8

    invoke-direct {p0, v0}, Lcom/huanju/data/content/raw/f;->a(Lcom/huanju/data/content/raw/HjRequestFrom;)I

    move-result v9

    const/4 v10, 0x1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v10}, Lcom/huanju/data/content/raw/info/ao;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)V

    invoke-virtual {v1, p1}, Lcom/huanju/data/content/raw/info/ao;->a(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;)V

    invoke-virtual {v1}, Lcom/huanju/data/content/raw/info/ao;->process()V

    return-void
.end method

.method public a(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;Ljava/lang/String;IILcom/huanju/data/content/raw/HjRequestFrom;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener",
            "<",
            "Lcom/huanju/data/content/raw/video/HjVideoListItem;",
            ">;",
            "Ljava/lang/String;",
            "II",
            "Lcom/huanju/data/content/raw/HjRequestFrom;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/huanju/data/content/raw/f;->a:Lcom/huanju/data/a/b;

    const-string v1, "requestVideoDetail"

    invoke-virtual {v0, v1}, Lcom/huanju/data/a/b;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/huanju/data/content/raw/video/d;

    iget-object v1, p0, Lcom/huanju/data/content/raw/f;->b:Landroid/content/Context;

    invoke-direct {p0, p5}, Lcom/huanju/data/content/raw/f;->a(Lcom/huanju/data/content/raw/HjRequestFrom;)I

    move-result v5

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/huanju/data/content/raw/video/d;-><init>(Landroid/content/Context;Ljava/lang/String;III)V

    invoke-virtual {v0, p1}, Lcom/huanju/data/content/raw/video/d;->a(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;)V

    invoke-virtual {v0}, Lcom/huanju/data/content/raw/video/d;->process()V

    return-void
.end method

.method public a(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILcom/huanju/data/content/raw/HjRequestFrom;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener",
            "<",
            "Lcom/huanju/data/content/raw/video/HjVideoListItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Lcom/huanju/data/content/raw/HjRequestFrom;",
            ")V"
        }
    .end annotation

    sget-object v1, Lcom/huanju/data/content/raw/f;->a:Lcom/huanju/data/a/b;

    const-string v2, "requestVideoList"

    invoke-virtual {v1, v2}, Lcom/huanju/data/a/b;->b(Ljava/lang/String;)V

    new-instance v1, Lcom/huanju/data/content/raw/video/h;

    iget-object v2, p0, Lcom/huanju/data/content/raw/f;->b:Landroid/content/Context;

    move-object/from16 v0, p8

    invoke-direct {p0, v0}, Lcom/huanju/data/content/raw/f;->a(Lcom/huanju/data/content/raw/HjRequestFrom;)I

    move-result v9

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/huanju/data/content/raw/video/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V

    invoke-virtual {v1, p1}, Lcom/huanju/data/content/raw/video/h;->a(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;)V

    invoke-virtual {v1}, Lcom/huanju/data/content/raw/video/h;->process()V

    return-void
.end method

.method public a(Lcom/huanju/data/content/raw/listener/IHjRequestRecomVideoListener;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lcom/huanju/data/content/raw/info/p;

    iget-object v1, p0, Lcom/huanju/data/content/raw/f;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/huanju/data/content/raw/info/p;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/huanju/data/content/raw/info/p;->a(Lcom/huanju/data/content/raw/listener/IHjRequestRecomVideoListener;)V

    invoke-virtual {v0}, Lcom/huanju/data/content/raw/info/p;->process()V

    return-void
.end method

.method public a(Lcom/huanju/data/content/raw/listener/IHjRequestRecommStrateListener;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lcom/huanju/data/content/raw/info/ah;

    iget-object v1, p0, Lcom/huanju/data/content/raw/f;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/huanju/data/content/raw/info/ah;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/huanju/data/content/raw/info/ah;->a(Lcom/huanju/data/content/raw/listener/IHjRequestRecommStrateListener;)V

    invoke-virtual {v0}, Lcom/huanju/data/content/raw/info/ah;->process()V

    return-void
.end method

.method public a(Lcom/huanju/data/content/raw/listener/IHjRequestRecommendListListener;IILcom/huanju/data/content/raw/HjRequestFrom;)V
    .registers 8

    new-instance v0, Lcom/huanju/data/content/raw/info/v;

    iget-object v1, p0, Lcom/huanju/data/content/raw/f;->b:Landroid/content/Context;

    invoke-direct {p0, p4}, Lcom/huanju/data/content/raw/f;->a(Lcom/huanju/data/content/raw/HjRequestFrom;)I

    move-result v2

    invoke-direct {v0, v1, p3, p2, v2}, Lcom/huanju/data/content/raw/info/v;-><init>(Landroid/content/Context;III)V

    invoke-virtual {v0, p1}, Lcom/huanju/data/content/raw/info/v;->a(Lcom/huanju/data/content/raw/listener/IHjRequestRecommendListListener;)V

    invoke-virtual {v0}, Lcom/huanju/data/content/raw/info/v;->process()V

    return-void
.end method

.method public a(Lcom/huanju/data/content/raw/listener/IHjRequestVoteListener;Ljava/lang/String;Lcom/huanju/data/content/raw/HjVoteType;)V
    .registers 6

    new-instance v0, Lcom/huanju/data/content/raw/info/q;

    iget-object v1, p0, Lcom/huanju/data/content/raw/f;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p2, p3}, Lcom/huanju/data/content/raw/info/q;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/huanju/data/content/raw/HjVoteType;)V

    invoke-virtual {v0, p1}, Lcom/huanju/data/content/raw/info/q;->a(Lcom/huanju/data/content/raw/listener/IHjRequestVoteListener;)V

    invoke-virtual {v0}, Lcom/huanju/data/content/raw/info/q;->process()V

    return-void
.end method

.method public b(Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener;Ljava/lang/String;Lcom/huanju/data/content/raw/HjRequestFrom;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener",
            "<",
            "Lcom/huanju/data/content/raw/info/HjInfoDetail;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/huanju/data/content/raw/HjRequestFrom;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/huanju/data/content/raw/f;->a:Lcom/huanju/data/a/b;

    const-string v1, "requestNewsDetail"

    invoke-virtual {v0, v1}, Lcom/huanju/data/a/b;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/huanju/data/content/raw/info/ak;

    iget-object v1, p0, Lcom/huanju/data/content/raw/f;->b:Landroid/content/Context;

    invoke-direct {p0, p3}, Lcom/huanju/data/content/raw/f;->a(Lcom/huanju/data/content/raw/HjRequestFrom;)I

    move-result v2

    invoke-direct {v0, v1, p2, v2}, Lcom/huanju/data/content/raw/info/ak;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0, p1}, Lcom/huanju/data/content/raw/info/ak;->a(Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener;)V

    invoke-virtual {v0}, Lcom/huanju/data/content/raw/info/ak;->process()V

    return-void
.end method

.method public b(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;ILjava/lang/String;IILcom/huanju/data/content/raw/HjRequestFrom;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener",
            "<",
            "Lcom/huanju/data/content/raw/video/HjVideoListItem;",
            ">;I",
            "Ljava/lang/String;",
            "II",
            "Lcom/huanju/data/content/raw/HjRequestFrom;",
            ")V"
        }
    .end annotation

    new-instance v1, Lcom/huanju/data/content/raw/video/k;

    iget-object v2, p0, Lcom/huanju/data/content/raw/f;->b:Landroid/content/Context;

    const-string v4, ""

    const-string v5, ""

    move-object/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/huanju/data/content/raw/f;->a(Lcom/huanju/data/content/raw/HjRequestFrom;)I

    move-result v9

    const/4 v10, 0x0

    move v3, p2

    move-object v6, p3

    move v7, p4

    move/from16 v8, p5

    invoke-direct/range {v1 .. v10}, Lcom/huanju/data/content/raw/video/k;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)V

    invoke-virtual {v1, p1}, Lcom/huanju/data/content/raw/video/k;->a(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;)V

    invoke-virtual {v1}, Lcom/huanju/data/content/raw/video/k;->process()V

    return-void
.end method

.method public b(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/huanju/data/content/raw/HjRequestFrom;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener",
            "<",
            "Lcom/huanju/data/content/raw/video/HjVideoListItem;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/huanju/data/content/raw/HjRequestFrom;",
            ")V"
        }
    .end annotation

    new-instance v1, Lcom/huanju/data/content/raw/video/k;

    iget-object v2, p0, Lcom/huanju/data/content/raw/f;->b:Landroid/content/Context;

    move-object/from16 v0, p8

    invoke-direct {p0, v0}, Lcom/huanju/data/content/raw/f;->a(Lcom/huanju/data/content/raw/HjRequestFrom;)I

    move-result v9

    const/4 v10, 0x1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v10}, Lcom/huanju/data/content/raw/video/k;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)V

    invoke-virtual {v1, p1}, Lcom/huanju/data/content/raw/video/k;->a(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;)V

    invoke-virtual {v1}, Lcom/huanju/data/content/raw/video/k;->process()V

    return-void
.end method

.method public b(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;Ljava/lang/String;IILcom/huanju/data/content/raw/HjRequestFrom;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener",
            "<",
            "Lcom/huanju/data/content/raw/info/HjInfoListItem;",
            ">;",
            "Ljava/lang/String;",
            "II",
            "Lcom/huanju/data/content/raw/HjRequestFrom;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/huanju/data/content/raw/info/an;

    iget-object v1, p0, Lcom/huanju/data/content/raw/f;->b:Landroid/content/Context;

    invoke-direct {p0, p5}, Lcom/huanju/data/content/raw/f;->a(Lcom/huanju/data/content/raw/HjRequestFrom;)I

    move-result v5

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/huanju/data/content/raw/info/an;-><init>(Landroid/content/Context;Ljava/lang/String;III)V

    invoke-virtual {v0, p1}, Lcom/huanju/data/content/raw/info/an;->a(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;)V

    invoke-virtual {v0}, Lcom/huanju/data/content/raw/info/an;->process()V

    return-void
.end method
