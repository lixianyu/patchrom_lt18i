.class Landroid/webkit/WebView$ScaleDetectorListener;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleDetectorListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method private constructor <init>(Landroid/webkit/WebView;)V
    .locals 0
    .parameter

    .prologue
    .line 5049
    iput-object p1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebView;Landroid/webkit/WebView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5049
    invoke-direct {p0, p1}, Landroid/webkit/WebView$ScaleDetectorListener;-><init>(Landroid/webkit/WebView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 7
    .parameter "detector"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 5104
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v2}, Landroid/webkit/WebView;->access$900(Landroid/webkit/WebView;)F

    move-result v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x4059

    div-double/2addr v1, v3

    double-to-float v0, v1

    .line 5106
    .local v0, scale:F
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v1}, Landroid/webkit/WebView;->access$900(Landroid/webkit/WebView;)F

    move-result v1

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {}, Landroid/webkit/WebView;->access$2800()F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    .line 5107
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->mPreviewZoomOnly:Z
    invoke-static {v1, v6}, Landroid/webkit/WebView;->access$2002(Landroid/webkit/WebView;Z)Z

    .line 5109
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v1}, Landroid/webkit/WebView;->access$900(Landroid/webkit/WebView;)F

    move-result v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 5110
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v1}, Landroid/webkit/WebView;->access$900(Landroid/webkit/WebView;)F

    move-result v1

    const/high16 v2, 0x3fa0

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 5114
    :goto_0
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    #setter for: Landroid/webkit/WebView;->mZoomCenterX:F
    invoke-static {v1, v2}, Landroid/webkit/WebView;->access$2202(Landroid/webkit/WebView;F)F

    .line 5115
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v2

    #setter for: Landroid/webkit/WebView;->mZoomCenterY:F
    invoke-static {v1, v2}, Landroid/webkit/WebView;->access$2502(Landroid/webkit/WebView;F)F

    .line 5116
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->setNewZoomScale(FZZ)V
    invoke-static {v1, v0, v5, v5}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;FZZ)V

    .line 5117
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->invalidate()V

    move v1, v6

    .line 5120
    :goto_1
    return v1

    .line 5112
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v1}, Landroid/webkit/WebView;->access$900(Landroid/webkit/WebView;)F

    move-result v1

    const v2, 0x3f4ccccd

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0

    :cond_1
    move v1, v5

    .line 5120
    goto :goto_1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .parameter "detector"

    .prologue
    const/4 v1, 0x0

    .line 5054
    iget-object v0, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->cancelTouch()V
    invoke-static {v0}, Landroid/webkit/WebView;->access$1700(Landroid/webkit/WebView;)V

    .line 5055
    iget-object v0, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->dismissZoomControl()V

    .line 5057
    iget-object v0, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iput-boolean v1, v0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 5060
    iget-object v0, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->inEditingMode()Z
    invoke-static {v0}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->nativeFocusCandidateIsPassword()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5061
    iget-object v0, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v0}, Landroid/webkit/WebView;->access$1900(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebTextView;->setInPassword(Z)V

    .line 5064
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v0}, Landroid/webkit/ViewManager;->startZoom()V

    .line 5066
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 9
    .parameter "detector"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 5070
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPreviewZoomOnly:Z
    invoke-static {v1}, Landroid/webkit/WebView;->access$2000(Landroid/webkit/WebView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5071
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->mPreviewZoomOnly:Z
    invoke-static {v1, v8}, Landroid/webkit/WebView;->access$2002(Landroid/webkit/WebView;Z)Z

    .line 5072
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomCenterX:F
    invoke-static {v3}, Landroid/webkit/WebView;->access$2200(Landroid/webkit/WebView;)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v4}, Landroid/webkit/WebView;->access$2300(Landroid/webkit/WebView;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v2

    #setter for: Landroid/webkit/WebView;->mAnchorX:I
    invoke-static {v1, v2}, Landroid/webkit/WebView;->access$2102(Landroid/webkit/WebView;I)I

    .line 5073
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomCenterY:F
    invoke-static {v3}, Landroid/webkit/WebView;->access$2500(Landroid/webkit/WebView;)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollY:I
    invoke-static {v4}, Landroid/webkit/WebView;->access$2600(Landroid/webkit/WebView;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v2

    #setter for: Landroid/webkit/WebView;->mAnchorY:I
    invoke-static {v1, v2}, Landroid/webkit/WebView;->access$2402(Landroid/webkit/WebView;I)I

    .line 5076
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v1}, Landroid/webkit/WebView;->access$900(Landroid/webkit/WebView;)F

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mMinZoomScale:F
    invoke-static {v2}, Landroid/webkit/WebView;->access$2700(Landroid/webkit/WebView;)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {}, Landroid/webkit/WebView;->access$2800()F

    move-result v2

    cmpg-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v1}, Landroid/webkit/WebView;->access$900(Landroid/webkit/WebView;)F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3fe999999999999aL

    iget-object v5, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget v5, v5, Landroid/webkit/WebView;->mTextWrapScale:F

    float-to-double v5, v5

    mul-double/2addr v3, v5

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_3

    :cond_0
    move v0, v7

    .line 5081
    .local v0, reflowNow:Z
    :goto_0
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v2}, Landroid/webkit/WebView;->access$900(Landroid/webkit/WebView;)F

    move-result v2

    #calls: Landroid/webkit/WebView;->setNewZoomScale(FZZ)V
    invoke-static {v1, v2, v0, v7}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;FZZ)V

    .line 5083
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->invalidate()V

    .line 5086
    .end local v0           #reflowNow:Z
    :cond_1
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->inEditingMode()Z
    invoke-static {v1}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->didUpdateTextViewBounds(Z)Z
    invoke-static {v1, v8}, Landroid/webkit/WebView;->access$2900(Landroid/webkit/WebView;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->nativeFocusCandidateIsPassword()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5090
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v1}, Landroid/webkit/WebView;->access$1900(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/webkit/WebTextView;->setInPassword(Z)V

    .line 5095
    :cond_2
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    const/16 v2, 0x8

    #setter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v1, v2}, Landroid/webkit/WebView;->access$3002(Landroid/webkit/WebView;I)I

    .line 5096
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->mConfirmMove:Z
    invoke-static {v1, v7}, Landroid/webkit/WebView;->access$3102(Landroid/webkit/WebView;Z)Z

    .line 5097
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    iget-object v4, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mLastTouchTime:J
    invoke-static {v4}, Landroid/webkit/WebView;->access$3200(Landroid/webkit/WebView;)J

    move-result-wide v4

    #calls: Landroid/webkit/WebView;->startTouch(FFJ)V
    invoke-static {v1, v2, v3, v4, v5}, Landroid/webkit/WebView;->access$3300(Landroid/webkit/WebView;FFJ)V

    .line 5100
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v1}, Landroid/webkit/ViewManager;->endZoom()V

    .line 5101
    return-void

    :cond_3
    move v0, v8

    .line 5076
    goto :goto_0
.end method
