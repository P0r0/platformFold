.class public Lmobisocial/omlib/service/OmlibContentProvider$Intents;
.super Ljava/lang/Object;
.source "OmlibContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/service/OmlibContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Intents"
.end annotation


# static fields
.field public static final ACTION_OBJECT_PUSHED:Ljava/lang/String; = "mobisocial.omlib.action.OBJECT_PUSHED"

.field public static final ACTION_OBJECT_RECEIVED:Ljava/lang/String; = "mobisocial.omlib.action.OBJECT_RECEIVED"

.field public static final EXTRA_OBJECT_ID:Ljava/lang/String; = "mobisocial.omlib.extra.OBJECT_ID"

.field public static final EXTRA_OBJECT_ID_ARRAY:Ljava/lang/String; = "mobisocial.omlib.extra.OBJECT_ID_ARRAY"

.field public static final EXTRA_OBJECT_TYPE:Ljava/lang/String; = "mobisocial.omlib.extra.OBJECT_TYPE"

.field public static final EXTRA_OBJECT_TYPE_ARRAY:Ljava/lang/String; = "mobisocial.omlib.extra.OBJECT_TYPE_ARRAY"

.field public static final EXTRA_RESULTS:Ljava/lang/String; = "mobisocial.omlib.extra.RESULTS"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
