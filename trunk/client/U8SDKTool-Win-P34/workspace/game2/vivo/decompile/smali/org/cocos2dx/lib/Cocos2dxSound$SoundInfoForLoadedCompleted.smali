.class public Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;
.super Ljava/lang/Object;
.source "Cocos2dxSound.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/Cocos2dxSound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SoundInfoForLoadedCompleted"
.end annotation


# instance fields
.field public gain:F

.field public isLoop:Z

.field public pan:F

.field public path:Ljava/lang/String;

.field public pitch:F

.field public soundID:I

.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxSound;


# direct methods
.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxSound;Ljava/lang/String;IZFFF)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;->this$0:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;->path:Ljava/lang/String;

    iput p3, p0, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;->soundID:I

    iput-boolean p4, p0, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;->isLoop:Z

    iput p5, p0, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;->pitch:F

    iput p6, p0, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;->pan:F

    iput p7, p0, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;->gain:F

    return-void
.end method
