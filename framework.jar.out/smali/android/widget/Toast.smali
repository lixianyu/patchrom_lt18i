.class public Landroid/widget/Toast;
.super Ljava/lang/Object;
.source "Toast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Toast$TN;
    }
.end annotation


# static fields
.field public static final LENGTH_LONG:I = 0x1

.field public static final LENGTH_SHORT:I = 0x0

.field static final TAG:Ljava/lang/String; = "Toast"

.field static final localLOGV:Z

.field private static sService:Landroid/app/INotificationManager;


# instance fields
.field final mContext:Landroid/content/Context;

.field mDuration:I

.field mGravity:I

.field final mHandler:Landroid/os/Handler;

.field mHorizontalMargin:F

.field mNextView:Landroid/view/View;

.field final mTN:Landroid/widget/Toast$TN;

.field mVerticalMargin:F

.field mView:Landroid/view/View;

.field mX:I

.field mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/widget/Toast;->mHandler:Landroid/os/Handler;

    .line 72
    const/16 v0, 0x51

    iput v0, p0, Landroid/widget/Toast;->mGravity:I

    .line 87
    iput-object p1, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    .line 88
    new-instance v0, Landroid/widget/Toast$TN;

    invoke-direct {v0, p0}, Landroid/widget/Toast$TN;-><init>(Landroid/widget/Toast;)V

    iput-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/Toast;->mY:I

    .line 91
    return-void
.end method

.method private static getService()Landroid/app/INotificationManager;
    .locals 1

    .prologue
    .line 292
    sget-object v0, Landroid/widget/Toast;->sService:Landroid/app/INotificationManager;

    if-eqz v0, :cond_0

    .line 293
    sget-object v0, Landroid/widget/Toast;->sService:Landroid/app/INotificationManager;

    .line 296
    :goto_0
    return-object v0

    .line 295
    :cond_0
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    sput-object v0, Landroid/widget/Toast;->sService:Landroid/app/INotificationManager;

    .line 296
    sget-object v0, Landroid/widget/Toast;->sService:Landroid/app/INotificationManager;

    goto :goto_0
.end method

.method public static makeText(Landroid/content/Context;II)Landroid/widget/Toast;
    .locals 1
    .parameter "context"
    .parameter "resId"
    .parameter "duration"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 258
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .locals 6
    .parameter "context"
    .parameter "text"
    .parameter "duration"

    .prologue
    .line 231
    new-instance v1, Landroid/widget/Toast;

    invoke-direct {v1, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 233
    .local v1, result:Landroid/widget/Toast;
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 235
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v4, 0x1090089

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 236
    .local v3, v:Landroid/view/View;
    const v4, 0x102000b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 237
    .local v2, tv:Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iput-object v3, v1, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    .line 240
    iput p2, v1, Landroid/widget/Toast;->mDuration:I

    .line 242
    return-object v1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    invoke-virtual {v0}, Landroid/widget/Toast$TN;->hide()V

    .line 122
    return-void
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Landroid/widget/Toast;->mDuration:I

    return v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Landroid/widget/Toast;->mGravity:I

    return v0
.end method

.method public getHorizontalMargin()F
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Landroid/widget/Toast;->mHorizontalMargin:F

    return v0
.end method

.method public getVerticalMargin()F
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Landroid/widget/Toast;->mVerticalMargin:F

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    return-object v0
.end method

.method public getXOffset()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Landroid/widget/Toast;->mX:I

    return v0
.end method

.method public getYOffset()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Landroid/widget/Toast;->mY:I

    return v0
.end method

.method public setDuration(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 146
    iput p1, p0, Landroid/widget/Toast;->mDuration:I

    .line 147
    return-void
.end method

.method public setGravity(III)V
    .locals 0
    .parameter "gravity"
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    .line 192
    iput p1, p0, Landroid/widget/Toast;->mGravity:I

    .line 193
    iput p2, p0, Landroid/widget/Toast;->mX:I

    .line 194
    iput p3, p0, Landroid/widget/Toast;->mY:I

    .line 195
    return-void
.end method

.method public setMargin(FF)V
    .locals 0
    .parameter "horizontalMargin"
    .parameter "verticalMargin"

    .prologue
    .line 168
    iput p1, p0, Landroid/widget/Toast;->mHorizontalMargin:F

    .line 169
    iput p2, p0, Landroid/widget/Toast;->mVerticalMargin:F

    .line 170
    return-void
.end method

.method public setText(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 266
    iget-object v0, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 267
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "s"

    .prologue
    const-string v3, "This Toast was not created with Toast.makeText()"

    .line 274
    iget-object v1, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 275
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "This Toast was not created with Toast.makeText()"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 277
    :cond_0
    iget-object v1, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    const v2, 0x102000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 278
    .local v0, tv:Landroid/widget/TextView;
    if-nez v0, :cond_1

    .line 279
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "This Toast was not created with Toast.makeText()"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 281
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 129
    iput-object p1, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    .line 130
    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    .line 97
    iget-object v3, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-nez v3, :cond_0

    .line 98
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "setView must have been called"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 101
    :cond_0
    invoke-static {}, Landroid/widget/Toast;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    .line 103
    .local v1, service:Landroid/app/INotificationManager;
    iget-object v3, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, pkg:Ljava/lang/String;
    iget-object v2, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    .line 108
    .local v2, tn:Landroid/widget/Toast$TN;
    :try_start_0
    iget v3, p0, Landroid/widget/Toast;->mDuration:I

    invoke-interface {v1, v0, v2, v3}, Landroid/app/INotificationManager;->enqueueToast(Ljava/lang/String;Landroid/app/ITransientNotification;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v3

    goto :goto_0
.end method
