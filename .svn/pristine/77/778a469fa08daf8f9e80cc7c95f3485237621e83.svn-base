.class public Lcom/vivo/sdkplugin/Utils/HJDataUtil;
.super Ljava/lang/Object;


# static fields
.field public static final FILTER_ALL:Ljava/lang/String; = "0"

.field public static final HJ_CFROM:Ljava/lang/String; = "com.vivo.game.HJ_CFROM"

.field public static final PAGE_INDEX:I = 0x1

.field public static final REQUEST_FROM_DEFAULT:I = 0x0

.field public static final REQUEST_FROM_FLOAT:I = 0x3

.field public static final REQUEST_FROM_GAME_DETAIL:I = 0x1

.field public static final REQUEST_FROM_MORE:I = 0x2

.field public static final REQUEST_FROM_SEARCH:I = 0x5

.field public static final REQUEST_FROM_TAG:I = 0x4

.field public static final STRAETGY_ALL_TAG:Ljava/lang/String; = "stregty_all_tag"

.field public static final TYPE_NEWS:I = 0x1

.field public static final TYPE_SEARCH:I = 0x3

.field public static final TYPE_STRATEGY:I = 0x2

.field public static mInfoClickedSet:Ljava/util/HashSet;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/vivo/sdkplugin/Utils/HJDataUtil$RequestListItemListener;

.field private d:Ljava/util/HashMap;

.field private e:Lcom/vivo/sdkplugin/Utils/HJDataUtil$RequestItemDetailListener;

.field private f:Lcom/vivo/sdkplugin/Utils/HJDataUtil$RequestResUpdateListener;

.field private g:Lcom/huanju/data/HjDataClient;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->mInfoClickedSet:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->h:Z

    invoke-static {p1}, Lcom/huanju/data/HjDataClient;->getInstance(Landroid/content/Context;)Lcom/huanju/data/HjDataClient;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->g:Lcom/huanju/data/HjDataClient;

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/Utils/HJDataUtil;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->h:Z

    return v0
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/Utils/HJDataUtil;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic c(Lcom/vivo/sdkplugin/Utils/HJDataUtil;)Lcom/vivo/sdkplugin/Utils/HJDataUtil$RequestListItemListener;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->c:Lcom/vivo/sdkplugin/Utils/HJDataUtil$RequestListItemListener;

    return-object v0
.end method

.method public static clear()V
    .registers 1

    sget-object v0, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->mInfoClickedSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public static convertInfo(ILcom/huanju/data/content/raw/info/HjInfoListItem;)Lcom/vivo/sdkplugin/adapter/HjInfoDataItem;
    .registers 6

    new-instance v0, Lcom/vivo/sdkplugin/adapter/HjInfoDataItem;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/adapter/HjInfoDataItem;-><init>(I)V

    iget-object v1, p1, Lcom/huanju/data/content/raw/info/HjInfoListItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/adapter/HjInfoDataItem;->setTitle(Ljava/lang/String;)V

    iget-wide v2, p1, Lcom/huanju/data/content/raw/info/HjInfoListItem;->ctime:J

    invoke-virtual {v0, v2, v3}, Lcom/vivo/sdkplugin/adapter/HjInfoDataItem;->setHuanjuTime(J)V

    iget-object v1, p1, Lcom/huanju/data/content/raw/info/HjInfoListItem;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/adapter/HjInfoDataItem;->setHuanjuId(Ljava/lang/String;)V

    iget-wide v2, p1, Lcom/huanju/data/content/raw/info/HjInfoListItem;->vcnt:J

    invoke-virtual {v0, v2, v3}, Lcom/vivo/sdkplugin/adapter/HjInfoDataItem;->setScanTimes(J)V

    return-object v0
.end method

.method public static convertStrToArray(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 5

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_c
    array-length v3, v2

    if-lt v1, v3, :cond_12

    check-cast v0, Ljava/util/ArrayList;

    return-object v0

    :cond_12
    aget-object v3, v2, v1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_c
.end method

.method static synthetic d(Lcom/vivo/sdkplugin/Utils/HJDataUtil;)Lcom/vivo/sdkplugin/Utils/HJDataUtil$RequestItemDetailListener;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->e:Lcom/vivo/sdkplugin/Utils/HJDataUtil$RequestItemDetailListener;

    return-object v0
.end method

.method static synthetic e(Lcom/vivo/sdkplugin/Utils/HJDataUtil;)Lcom/vivo/sdkplugin/Utils/HJDataUtil$RequestResUpdateListener;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->f:Lcom/vivo/sdkplugin/Utils/HJDataUtil$RequestResUpdateListener;

    return-object v0
.end method

.method public static hjFilterList(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 5

    if-nez p1, :cond_3

    :cond_2
    return-object p0

    :cond_3
    invoke-static {p1}, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->convertStrToArray(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_9
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huanju/data/content/raw/info/HjInfoListItem;

    iget-object v0, v0, Lcom/huanju/data/content/raw/info/HjInfoListItem;->id:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_22
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9
.end method


# virtual methods
.method public addmListItemListener(Ljava/lang/String;Lcom/vivo/sdkplugin/Utils/HJDataUtil$RequestListItemListener;)V
    .registers 4

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->d:Ljava/util/HashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->d:Ljava/util/HashMap;

    :cond_b
    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public closeClient()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->h:Z

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->g:Lcom/huanju/data/HjDataClient;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->g:Lcom/huanju/data/HjDataClient;

    invoke-virtual {v0}, Lcom/huanju/data/HjDataClient;->release()V

    :cond_c
    return-void
.end method

.method public getCfrom(I)Lcom/huanju/data/content/raw/HjRequestFrom;
    .registers 3

    sget-object v0, Lcom/huanju/data/content/raw/HjRequestFrom;->hj_default:Lcom/huanju/data/content/raw/HjRequestFrom;

    packed-switch p1, :pswitch_data_16

    :goto_5
    return-object v0

    :pswitch_6
    sget-object v0, Lcom/huanju/data/content/raw/HjRequestFrom;->hj_floating:Lcom/huanju/data/content/raw/HjRequestFrom;

    goto :goto_5

    :pswitch_9
    sget-object v0, Lcom/huanju/data/content/raw/HjRequestFrom;->hj_more:Lcom/huanju/data/content/raw/HjRequestFrom;

    goto :goto_5

    :pswitch_c
    sget-object v0, Lcom/huanju/data/content/raw/HjRequestFrom;->hj_floating:Lcom/huanju/data/content/raw/HjRequestFrom;

    goto :goto_5

    :pswitch_f
    sget-object v0, Lcom/huanju/data/content/raw/HjRequestFrom;->hj_tag:Lcom/huanju/data/content/raw/HjRequestFrom;

    goto :goto_5

    :pswitch_12
    sget-object v0, Lcom/huanju/data/content/raw/HjRequestFrom;->hj_search:Lcom/huanju/data/content/raw/HjRequestFrom;

    goto :goto_5

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
    .end packed-switch
.end method

.method public requestHJGameResUpdate()V
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->requestHJGameResUpdate(Ljava/lang/String;)V

    return-void
.end method

.method public requestHJGameResUpdate(Ljava/lang/String;)V
    .registers 5

    const-string v0, "VivoGame.HJDataUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestHJGameResUpdate "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->g:Lcom/huanju/data/HjDataClient;

    new-instance v1, Lcom/vivo/sdkplugin/Utils/l;

    invoke-direct {v1, p0, p1}, Lcom/vivo/sdkplugin/Utils/l;-><init>(Lcom/vivo/sdkplugin/Utils/HJDataUtil;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lcom/huanju/data/HjDataClient;->requestResourceStatus(Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener;Ljava/lang/String;)V

    return-void
.end method

.method public requestHjData()V
    .registers 8

    const/4 v5, 0x1

    sget-boolean v0, Lcom/vivo/sdkplugin/adapter/GameInfoConstants;->HAS_HUANJUN:Z

    if-eqz v0, :cond_39

    invoke-static {}, Lcom/vivo/sdkplugin/adapter/GameInfoConstants;->hasHJNews()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, v5, v5}, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->requestHjNewsList(II)V

    :cond_e
    invoke-static {}, Lcom/vivo/sdkplugin/adapter/GameInfoConstants;->hasHJStrategy()Z

    move-result v0

    if-eqz v0, :cond_39

    const-string v0, "VivoGame.HJDataUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestHjStrategyList cfrom 1"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->g:Lcom/huanju/data/HjDataClient;

    new-instance v1, Lcom/vivo/sdkplugin/Utils/k;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/vivo/sdkplugin/Utils/k;-><init>(Lcom/vivo/sdkplugin/Utils/HJDataUtil;I)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->b:Ljava/lang/String;

    const/16 v4, 0xa

    invoke-virtual {p0, v5}, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->getCfrom(I)Lcom/huanju/data/content/raw/HjRequestFrom;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/huanju/data/HjDataClient;->requestStrategyList(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;Ljava/lang/String;Ljava/lang/String;IILcom/huanju/data/content/raw/HjRequestFrom;)V

    :cond_39
    return-void
.end method

.method public requestHjItemDetail(ILcom/vivo/sdkplugin/adapter/HjInfoDataItem;)V
    .registers 7

    const-string v0, "VivoGame.HJDataUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestHjItemDetail cfrom "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->g:Lcom/huanju/data/HjDataClient;

    new-instance v1, Lcom/vivo/sdkplugin/Utils/l;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vivo/sdkplugin/Utils/l;-><init>(Lcom/vivo/sdkplugin/Utils/HJDataUtil;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/vivo/sdkplugin/adapter/HjInfoDataItem;->getHuanjuId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->getCfrom(I)Lcom/huanju/data/content/raw/HjRequestFrom;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/huanju/data/HjDataClient;->requestInfoDetail(Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener;Ljava/lang/String;Lcom/huanju/data/content/raw/HjRequestFrom;)V

    return-void
.end method

.method public requestHjNewsList(II)V
    .registers 10

    const-string v0, "VivoGame.HJDataUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestHjNewsList "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cfrom "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->g:Lcom/huanju/data/HjDataClient;

    new-instance v1, Lcom/vivo/sdkplugin/Utils/k;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/vivo/sdkplugin/Utils/k;-><init>(Lcom/vivo/sdkplugin/Utils/HJDataUtil;I)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->b:Ljava/lang/String;

    const/16 v4, 0xa

    invoke-virtual {p0, p1}, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->getCfrom(I)Lcom/huanju/data/content/raw/HjRequestFrom;

    move-result-object v6

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/huanju/data/HjDataClient;->requestReviewsList(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;Ljava/lang/String;Ljava/lang/String;IILcom/huanju/data/content/raw/HjRequestFrom;)V

    return-void
.end method

.method public requestHjStrategyList(II)V
    .registers 10

    const-string v0, "VivoGame.HJDataUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestHjStrategyList cfrom "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pageIndex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->g:Lcom/huanju/data/HjDataClient;

    new-instance v1, Lcom/vivo/sdkplugin/Utils/k;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/vivo/sdkplugin/Utils/k;-><init>(Lcom/vivo/sdkplugin/Utils/HJDataUtil;I)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->b:Ljava/lang/String;

    const/16 v4, 0xa

    invoke-virtual {p0, p1}, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->getCfrom(I)Lcom/huanju/data/content/raw/HjRequestFrom;

    move-result-object v6

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/huanju/data/HjDataClient;->requestStrategyList(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;Ljava/lang/String;Ljava/lang/String;IILcom/huanju/data/content/raw/HjRequestFrom;)V

    return-void
.end method

.method public requestHjStrategyList(IILjava/lang/String;)V
    .registers 12

    const/16 v5, 0xa

    const/4 v3, 0x2

    const-string v0, "VivoGame.HJDataUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestHjStrategyList "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cfrom "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mPackageName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mGameName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_66

    const-string v0, "stregty_all_tag"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->g:Lcom/huanju/data/HjDataClient;

    new-instance v1, Lcom/vivo/sdkplugin/Utils/k;

    invoke-direct {v1, p0, v3, p3}, Lcom/vivo/sdkplugin/Utils/k;-><init>(Lcom/vivo/sdkplugin/Utils/HJDataUtil;ILjava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->getCfrom(I)Lcom/huanju/data/content/raw/HjRequestFrom;

    move-result-object v7

    move-object v4, p3

    move v6, p2

    invoke-virtual/range {v0 .. v7}, Lcom/huanju/data/HjDataClient;->requestStrategyList(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/huanju/data/content/raw/HjRequestFrom;)V

    :goto_65
    return-void

    :cond_66
    iget-object v1, p0, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->g:Lcom/huanju/data/HjDataClient;

    new-instance v2, Lcom/vivo/sdkplugin/Utils/k;

    invoke-direct {v2, p0, v3, p3}, Lcom/vivo/sdkplugin/Utils/k;-><init>(Lcom/vivo/sdkplugin/Utils/HJDataUtil;ILjava/lang/String;)V

    iget-object v3, p0, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->getCfrom(I)Lcom/huanju/data/content/raw/HjRequestFrom;

    move-result-object v7

    move v6, p2

    invoke-virtual/range {v1 .. v7}, Lcom/huanju/data/HjDataClient;->requestStrategyList(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;Ljava/lang/String;Ljava/lang/String;IILcom/huanju/data/content/raw/HjRequestFrom;)V

    goto :goto_65
.end method

.method public requestSearchStrategy(IILjava/lang/String;)V
    .registers 12

    const-string v0, "VivoGame.HJDataUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestSearchStrategy "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPackageName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mGameName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cfrom "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->g:Lcom/huanju/data/HjDataClient;

    new-instance v1, Lcom/vivo/sdkplugin/Utils/k;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/vivo/sdkplugin/Utils/k;-><init>(Lcom/vivo/sdkplugin/Utils/HJDataUtil;I)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->b:Ljava/lang/String;

    const/16 v5, 0xa

    invoke-virtual {p0, p1}, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->getCfrom(I)Lcom/huanju/data/content/raw/HjRequestFrom;

    move-result-object v7

    move-object v4, p3

    move v6, p2

    invoke-virtual/range {v0 .. v7}, Lcom/huanju/data/HjDataClient;->searchStrategyList(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/huanju/data/content/raw/HjRequestFrom;)V

    return-void
.end method

.method public setmGameName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->b:Ljava/lang/String;

    return-void
.end method

.method public setmItemDetailListener(Lcom/vivo/sdkplugin/Utils/HJDataUtil$RequestItemDetailListener;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->e:Lcom/vivo/sdkplugin/Utils/HJDataUtil$RequestItemDetailListener;

    return-void
.end method

.method public setmListItemListener(Lcom/vivo/sdkplugin/Utils/HJDataUtil$RequestListItemListener;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->c:Lcom/vivo/sdkplugin/Utils/HJDataUtil$RequestListItemListener;

    return-void
.end method

.method public setmPackageName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->a:Ljava/lang/String;

    return-void
.end method

.method public setmResUpdateListener(Lcom/vivo/sdkplugin/Utils/HJDataUtil$RequestResUpdateListener;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->f:Lcom/vivo/sdkplugin/Utils/HJDataUtil$RequestResUpdateListener;

    return-void
.end method
