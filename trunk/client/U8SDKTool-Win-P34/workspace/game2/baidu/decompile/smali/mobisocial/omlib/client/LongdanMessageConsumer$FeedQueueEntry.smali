.class Lmobisocial/omlib/client/LongdanMessageConsumer$FeedQueueEntry;
.super Ljava/lang/Object;
.source "LongdanMessageConsumer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/client/LongdanMessageConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeedQueueEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lmobisocial/omlib/client/LongdanMessageConsumer$FeedQueueEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private mExpectedNewMessageTime:J

.field private mFromConsumer:Z

.field private mIdentifier:Ljava/lang/String;

.field final synthetic this$0:Lmobisocial/omlib/client/LongdanMessageConsumer;


# direct methods
.method public constructor <init>(Lmobisocial/omlib/client/LongdanMessageConsumer;Ljava/lang/String;JZ)V
    .registers 7
    .param p2, "mIdentifier"    # Ljava/lang/String;
    .param p3, "expectedNewMessageTime"    # J
    .param p5, "fromConsumer"    # Z

    .prologue
    .line 856
    iput-object p1, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$FeedQueueEntry;->this$0:Lmobisocial/omlib/client/LongdanMessageConsumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 857
    iput-boolean p5, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$FeedQueueEntry;->mFromConsumer:Z

    .line 858
    iput-wide p3, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$FeedQueueEntry;->mExpectedNewMessageTime:J

    .line 859
    iput-object p2, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$FeedQueueEntry;->mIdentifier:Ljava/lang/String;

    .line 860
    return-void
.end method

.method static synthetic access$1400(Lmobisocial/omlib/client/LongdanMessageConsumer$FeedQueueEntry;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlib/client/LongdanMessageConsumer$FeedQueueEntry;

    .prologue
    .line 848
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$FeedQueueEntry;->mIdentifier:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 848
    check-cast p1, Lmobisocial/omlib/client/LongdanMessageConsumer$FeedQueueEntry;

    invoke-virtual {p0, p1}, Lmobisocial/omlib/client/LongdanMessageConsumer$FeedQueueEntry;->compareTo(Lmobisocial/omlib/client/LongdanMessageConsumer$FeedQueueEntry;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lmobisocial/omlib/client/LongdanMessageConsumer$FeedQueueEntry;)I
    .registers 6
    .param p1, "another"    # Lmobisocial/omlib/client/LongdanMessageConsumer$FeedQueueEntry;

    .prologue
    .line 872
    iget-wide v0, p1, Lmobisocial/omlib/client/LongdanMessageConsumer$FeedQueueEntry;->mExpectedNewMessageTime:J

    .line 873
    .local v0, "anotherTime":J
    iget-wide v2, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$FeedQueueEntry;->mExpectedNewMessageTime:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_a

    .line 874
    const/4 v2, 0x1

    .line 877
    :goto_9
    return v2

    .line 875
    :cond_a
    iget-wide v2, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$FeedQueueEntry;->mExpectedNewMessageTime:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_12

    .line 876
    const/4 v2, -0x1

    goto :goto_9

    .line 877
    :cond_12
    const/4 v2, 0x0

    goto :goto_9
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 882
    if-ne p0, p1, :cond_4

    .line 883
    const/4 v1, 0x1

    .line 890
    .end local p1    # "o":Ljava/lang/Object;
    :goto_3
    return v1

    .line 884
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_4
    if-eqz p1, :cond_10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_12

    .line 885
    :cond_10
    const/4 v1, 0x0

    goto :goto_3

    .line 886
    :cond_12
    instance-of v1, p1, Lmobisocial/omlib/db/entity/OMFeed;

    if-eqz v1, :cond_21

    .line 887
    iget-object v1, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$FeedQueueEntry;->mIdentifier:Ljava/lang/String;

    check-cast p1, Lmobisocial/omlib/db/entity/OMFeed;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v2, p1, Lmobisocial/omlib/db/entity/OMFeed;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_3

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_21
    move-object v0, p1

    .line 889
    check-cast v0, Lmobisocial/omlib/client/LongdanMessageConsumer$FeedQueueEntry;

    .line 890
    .local v0, "other":Lmobisocial/omlib/client/LongdanMessageConsumer$FeedQueueEntry;
    iget-object v1, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$FeedQueueEntry;->mIdentifier:Ljava/lang/String;

    iget-object v2, v0, Lmobisocial/omlib/client/LongdanMessageConsumer$FeedQueueEntry;->mIdentifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_3
.end method

.method public getIdentifier()Ljava/lang/String;
    .registers 2

    .prologue
    .line 863
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$FeedQueueEntry;->mIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 895
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$FeedQueueEntry;->mIdentifier:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$FeedQueueEntry;->mIdentifier:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isFromConsumer()Z
    .registers 2

    .prologue
    .line 867
    iget-boolean v0, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$FeedQueueEntry;->mFromConsumer:Z

    return v0
.end method
