.class Lmobisocial/omlib/client/LongdanMessageProcessor$LRUCache;
.super Ljava/util/LinkedHashMap;
.source "LongdanMessageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/client/LongdanMessageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LRUCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private cacheSize:I

.field final synthetic this$0:Lmobisocial/omlib/client/LongdanMessageProcessor;


# direct methods
.method public constructor <init>(Lmobisocial/omlib/client/LongdanMessageProcessor;I)V
    .registers 6
    .param p2, "cacheSize"    # I

    .prologue
    .line 605
    .local p0, "this":Lmobisocial/omlib/client/LongdanMessageProcessor$LRUCache;, "Lmobisocial/omlib/client/LongdanMessageProcessor$LRUCache<TK;TV;>;"
    iput-object p1, p0, Lmobisocial/omlib/client/LongdanMessageProcessor$LRUCache;->this$0:Lmobisocial/omlib/client/LongdanMessageProcessor;

    .line 606
    const/16 v0, 0x10

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 607
    iput p2, p0, Lmobisocial/omlib/client/LongdanMessageProcessor$LRUCache;->cacheSize:I

    .line 608
    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 611
    .local p0, "this":Lmobisocial/omlib/client/LongdanMessageProcessor$LRUCache;, "Lmobisocial/omlib/client/LongdanMessageProcessor$LRUCache<TK;TV;>;"
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0}, Lmobisocial/omlib/client/LongdanMessageProcessor$LRUCache;->size()I

    move-result v0

    iget v1, p0, Lmobisocial/omlib/client/LongdanMessageProcessor$LRUCache;->cacheSize:I

    if-lt v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
