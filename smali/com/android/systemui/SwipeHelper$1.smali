.class Lcom/android/systemui/SwipeHelper$1;
.super Ljava/lang/Object;
.source "SwipeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/SwipeHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/SwipeHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/systemui/SwipeHelper$1;->this$0:Lcom/android/systemui/SwipeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper$1;->this$0:Lcom/android/systemui/SwipeHelper;

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper$1;->this$0:Lcom/android/systemui/SwipeHelper;

    #getter for: Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z
    invoke-static {v0}, Lcom/android/systemui/SwipeHelper;->access$000(Lcom/android/systemui/SwipeHelper;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper$1;->this$0:Lcom/android/systemui/SwipeHelper;

    const/4 v1, 0x1

    #setter for: Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z
    invoke-static {v0, v1}, Lcom/android/systemui/SwipeHelper;->access$002(Lcom/android/systemui/SwipeHelper;Z)Z

    .line 228
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper$1;->this$0:Lcom/android/systemui/SwipeHelper;

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 229
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper$1;->this$0:Lcom/android/systemui/SwipeHelper;

    #getter for: Lcom/android/systemui/SwipeHelper;->mLongPressListener:Landroid/view/View$OnLongClickListener;
    invoke-static {v0}, Lcom/android/systemui/SwipeHelper;->access$100(Lcom/android/systemui/SwipeHelper;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/SwipeHelper$1;->this$0:Lcom/android/systemui/SwipeHelper;

    iget-object v1, v1, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    .line 231
    :cond_0
    return-void
.end method