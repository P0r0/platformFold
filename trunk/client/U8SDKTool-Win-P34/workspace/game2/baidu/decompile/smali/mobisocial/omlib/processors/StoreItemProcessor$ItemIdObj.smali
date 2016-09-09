.class Lmobisocial/omlib/processors/StoreItemProcessor$ItemIdObj;
.super Ljava/lang/Object;
.source "StoreItemProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/processors/StoreItemProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemIdObj"
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/processors/StoreItemProcessor;

.field public userRemoved:Z


# direct methods
.method private constructor <init>(Lmobisocial/omlib/processors/StoreItemProcessor;)V
    .registers 2

    .prologue
    .line 18
    iput-object p1, p0, Lmobisocial/omlib/processors/StoreItemProcessor$ItemIdObj;->this$0:Lmobisocial/omlib/processors/StoreItemProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
