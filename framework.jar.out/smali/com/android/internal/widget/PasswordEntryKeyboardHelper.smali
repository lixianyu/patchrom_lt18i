.class public Lcom/android/internal/widget/PasswordEntryKeyboardHelper;
.super Ljava/lang/Object;
.source "PasswordEntryKeyboardHelper.java"

# interfaces
.implements Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;


# static fields
.field public static final KEYBOARD_MODE_ALPHA:I = 0x0

.field public static final KEYBOARD_MODE_NUMERIC:I = 0x1

.field private static final KEYBOARD_STATE_CAPSLOCK:I = 0x2

.field private static final KEYBOARD_STATE_NORMAL:I = 0x0

.field private static final KEYBOARD_STATE_SHIFTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PasswordEntryKeyboardHelper"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mKeyboardMode:I

.field private mKeyboardState:I

.field private mKeyboardView:Landroid/inputmethodservice/KeyboardView;

.field private mNumericKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

.field private mQwertyKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

.field private mQwertyKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

.field private mSymbolsKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

.field private mSymbolsKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

.field private mTargetView:Landroid/view/View;

.field private mVibratePattern:[J

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V
    .locals 1
    .parameter "context"
    .parameter "keyboardView"
    .parameter "targetView"

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardMode:I

    .line 44
    iput v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    .line 57
    iput-object p1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    .line 58
    iput-object p3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mTargetView:Landroid/view/View;

    .line 59
    iput-object p2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    .line 60
    invoke-direct {p0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->createKeyboards()V

    .line 61
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0, p0}, Landroid/inputmethodservice/KeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    .line 62
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mVibrator:Landroid/os/Vibrator;

    .line 63
    return-void
.end method

.method private createKeyboards()V
    .locals 5

    .prologue
    const v4, 0x1020289

    const/4 v3, 0x1

    .line 70
    new-instance v0, Lcom/android/internal/widget/PasswordEntryKeyboard;

    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    const v2, 0x10b0004

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/PasswordEntryKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mNumericKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    .line 71
    new-instance v0, Lcom/android/internal/widget/PasswordEntryKeyboard;

    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    const v2, 0x10b0006

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/widget/PasswordEntryKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    .line 73
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboard;->enableShiftLock()V

    .line 75
    new-instance v0, Lcom/android/internal/widget/PasswordEntryKeyboard;

    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    const v2, 0x10b0007

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/widget/PasswordEntryKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    .line 78
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboard;->enableShiftLock()V

    .line 79
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/PasswordEntryKeyboard;->setShifted(Z)Z

    .line 81
    new-instance v0, Lcom/android/internal/widget/PasswordEntryKeyboard;

    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    const v2, 0x10b0008

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/PasswordEntryKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    .line 82
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboard;->enableShiftLock()V

    .line 84
    new-instance v0, Lcom/android/internal/widget/PasswordEntryKeyboard;

    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    const v2, 0x10b0009

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/PasswordEntryKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    .line 86
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboard;->enableShiftLock()V

    .line 87
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/PasswordEntryKeyboard;->setShifted(Z)Z

    .line 88
    return-void
.end method

.method private handleBackspace()V
    .locals 1

    .prologue
    .line 194
    const/16 v0, 0x43

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->sendDownUpKeyEvents(I)V

    .line 195
    return-void
.end method

.method private handleCharacter(I[I)V
    .locals 1
    .parameter "primaryCode"
    .parameter "keyCodes"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    .line 227
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p1

    .line 229
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->sendKeyEventsToTarget(I)V

    .line 230
    return-void
.end method

.method private handleClose()V
    .locals 0

    .prologue
    .line 234
    return-void
.end method

.method private handleModeChange()V
    .locals 3

    .prologue
    .line 180
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v2}, Landroid/inputmethodservice/KeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    .line 181
    .local v0, current:Landroid/inputmethodservice/Keyboard;
    const/4 v1, 0x0

    .line 182
    .local v1, next:Landroid/inputmethodservice/Keyboard;
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    if-ne v0, v2, :cond_3

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    .line 187
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 188
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v2, v1}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 189
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    .line 191
    :cond_2
    return-void

    .line 184
    :cond_3
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    if-eq v0, v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    if-ne v0, v2, :cond_1

    .line 185
    :cond_4
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    goto :goto_0
.end method

.method private handleShift()V
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 198
    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    if-nez v3, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v3}, Landroid/inputmethodservice/KeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    .line 202
    .local v0, current:Landroid/inputmethodservice/Keyboard;
    const/4 v2, 0x0

    .line 203
    .local v2, next:Lcom/android/internal/widget/PasswordEntryKeyboard;
    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    if-eq v0, v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    if-ne v0, v3, :cond_5

    :cond_2
    move v1, v5

    .line 205
    .local v1, isAlphaMode:Z
    :goto_1
    iget v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    if-nez v3, :cond_8

    .line 206
    if-eqz v1, :cond_6

    move v3, v5

    :goto_2
    iput v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    .line 207
    if-eqz v1, :cond_7

    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    move-object v2, v3

    .line 215
    :cond_3
    :goto_3
    if-eqz v2, :cond_0

    .line 216
    if-eq v2, v0, :cond_4

    .line 217
    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v3, v2}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 219
    :cond_4
    iget v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    if-ne v3, v4, :cond_c

    move v3, v5

    :goto_4
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PasswordEntryKeyboard;->setShiftLocked(Z)V

    .line 220
    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget v4, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    if-eqz v4, :cond_d

    move v4, v5

    :goto_5
    invoke-virtual {v3, v4}, Landroid/inputmethodservice/KeyboardView;->setShifted(Z)Z

    goto :goto_0

    .end local v1           #isAlphaMode:Z
    :cond_5
    move v1, v6

    .line 203
    goto :goto_1

    .restart local v1       #isAlphaMode:Z
    :cond_6
    move v3, v4

    .line 206
    goto :goto_2

    .line 207
    :cond_7
    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    move-object v2, v3

    goto :goto_3

    .line 208
    :cond_8
    iget v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    if-ne v3, v5, :cond_a

    .line 209
    iput v4, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    .line 210
    if-eqz v1, :cond_9

    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    move-object v2, v3

    :goto_6
    goto :goto_3

    :cond_9
    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    move-object v2, v3

    goto :goto_6

    .line 211
    :cond_a
    iget v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    if-ne v3, v4, :cond_3

    .line 212
    iput v6, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    .line 213
    if-eqz v1, :cond_b

    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    move-object v2, v3

    :goto_7
    goto :goto_3

    :cond_b
    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    move-object v2, v3

    goto :goto_7

    :cond_c
    move v3, v6

    .line 219
    goto :goto_4

    :cond_d
    move v4, v6

    .line 220
    goto :goto_5
.end method

.method private sendKeyEventsToTarget(I)V
    .locals 9
    .parameter "character"

    .prologue
    .line 110
    iget-object v5, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mTargetView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 111
    .local v3, handler:Landroid/os/Handler;
    const/4 v5, 0x3

    invoke-static {v5}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [C

    const/4 v7, 0x0

    int-to-char v8, p1

    aput-char v8, v6, v7

    invoke-virtual {v5, v6}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v2

    .line 113
    .local v2, events:[Landroid/view/KeyEvent;
    if-eqz v2, :cond_0

    .line 114
    array-length v0, v2

    .line 115
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_0

    .line 116
    aget-object v1, v2, v4

    .line 117
    .local v1, event:Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    or-int/lit8 v5, v5, 0x2

    or-int/lit8 v5, v5, 0x4

    invoke-static {v1, v5}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    .line 119
    const/16 v5, 0x3ed

    invoke-virtual {v3, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 115
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 122
    .end local v0           #N:I
    .end local v1           #event:Landroid/view/KeyEvent;
    .end local v4           #i:I
    :cond_0
    return-void
.end method


# virtual methods
.method public isAlpha()Z
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKey(I[I)V
    .locals 2
    .parameter "primaryCode"
    .parameter "keyCodes"

    .prologue
    .line 136
    const/4 v0, -0x5

    if-ne p1, v0, :cond_1

    .line 137
    invoke-direct {p0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->handleBackspace()V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 139
    invoke-direct {p0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->handleShift()V

    goto :goto_0

    .line 140
    :cond_2
    const/4 v0, -0x3

    if-ne p1, v0, :cond_3

    .line 141
    invoke-direct {p0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->handleClose()V

    goto :goto_0

    .line 143
    :cond_3
    const/4 v0, -0x2

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    if-eqz v0, :cond_4

    .line 144
    invoke-direct {p0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->handleModeChange()V

    goto :goto_0

    .line 146
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->handleCharacter(I[I)V

    .line 148
    iget v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 150
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    .line 151
    invoke-direct {p0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->handleShift()V

    goto :goto_0
.end method

.method public onPress(I)V
    .locals 3
    .parameter "primaryCode"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mVibratePattern:[J

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mVibratePattern:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 240
    :cond_0
    return-void
.end method

.method public onRelease(I)V
    .locals 0
    .parameter "primaryCode"

    .prologue
    .line 244
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 248
    return-void
.end method

.method public sendDownUpKeyEvents(I)V
    .locals 14
    .parameter "keyEventCode"

    .prologue
    .line 125
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 126
    .local v1, eventTime:J
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v12

    .line 127
    .local v12, handler:Landroid/os/Handler;
    const/16 v13, 0x3f3

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    move-wide v3, v1

    move v6, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v12, v13, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 130
    const/16 v13, 0x3f3

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    move-wide v3, v1

    move v6, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v12, v13, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 133
    return-void
.end method

.method public setKeyboardMode(I)V
    .locals 5
    .parameter "mode"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 91
    packed-switch p1, :pswitch_data_0

    .line 106
    :goto_0
    iput p1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardMode:I

    .line 107
    return-void

    .line 93
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 94
    iput v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    .line 95
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_password"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v0, v4

    .line 98
    .local v0, visiblePassword:Z
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v1, v0}, Landroid/inputmethodservice/KeyboardView;->setPreviewEnabled(Z)V

    goto :goto_0

    .end local v0           #visiblePassword:Z
    :cond_0
    move v0, v3

    .line 95
    goto :goto_1

    .line 101
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mNumericKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 102
    iput v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    .line 103
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v1, v3}, Landroid/inputmethodservice/KeyboardView;->setPreviewEnabled(Z)V

    goto :goto_0

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setVibratePattern(I)V
    .locals 6
    .parameter "id"

    .prologue
    .line 161
    const/4 v2, 0x0

    .line 163
    .local v2, tmpArray:[I
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getIntArray(I)[I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 169
    :cond_0
    :goto_0
    if-nez v2, :cond_2

    .line 170
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mVibratePattern:[J

    .line 177
    :cond_1
    return-void

    .line 164
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 165
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    if-eqz p1, :cond_0

    .line 166
    const-string v3, "PasswordEntryKeyboardHelper"

    const-string v4, "Vibrate pattern missing"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 173
    .end local v0           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_2
    array-length v3, v2

    new-array v3, v3, [J

    iput-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mVibratePattern:[J

    .line 174
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 175
    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mVibratePattern:[J

    aget v4, v2, v1

    int-to-long v4, v4

    aput-wide v4, v3, v1

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public swipeDown()V
    .locals 0

    .prologue
    .line 252
    return-void
.end method

.method public swipeLeft()V
    .locals 0

    .prologue
    .line 256
    return-void
.end method

.method public swipeRight()V
    .locals 0

    .prologue
    .line 260
    return-void
.end method

.method public swipeUp()V
    .locals 0

    .prologue
    .line 264
    return-void
.end method
