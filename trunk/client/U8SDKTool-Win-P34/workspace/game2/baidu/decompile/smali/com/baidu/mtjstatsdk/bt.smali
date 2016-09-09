.class public Lcom/baidu/mtjstatsdk/bt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/mtjstatsdk/game/BDGameDataObject;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;


# direct methods
.method public constructor <init>(Lcom/baidu/mtjstatsdk/game/BDGameDataCore;Lcom/baidu/mtjstatsdk/game/BDGameDataObject;Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 358
    iput-object p1, p0, Lcom/baidu/mtjstatsdk/bt;->d:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    iput-object p2, p0, Lcom/baidu/mtjstatsdk/bt;->a:Lcom/baidu/mtjstatsdk/game/BDGameDataObject;

    iput-object p3, p0, Lcom/baidu/mtjstatsdk/bt;->b:Ljava/lang/String;

    iput p4, p0, Lcom/baidu/mtjstatsdk/bt;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 362
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/bt;->a:Lcom/baidu/mtjstatsdk/game/BDGameDataObject;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/bt;->b:Ljava/lang/String;

    iget v2, p0, Lcom/baidu/mtjstatsdk/bt;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;->onUse(Ljava/lang/String;I)V

    .line 363
    return-void
.end method
