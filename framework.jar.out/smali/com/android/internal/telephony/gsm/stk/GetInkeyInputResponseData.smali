.class Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;
.super Lcom/android/internal/telephony/gsm/stk/ResponseData;
.source "ResponseData.java"


# static fields
.field protected static final GET_INKEY_NO:B = 0x0t

.field protected static final GET_INKEY_YES:B = 0x1t


# instance fields
.field public mInData:Ljava/lang/String;

.field private mIsPacked:Z

.field private mIsUcs2:Z

.field private mIsYesNo:Z

.field private mYesNoResponse:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 1
    .parameter "inData"
    .parameter "ucs2"
    .parameter "packed"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/ResponseData;-><init>()V

    .line 70
    iput-boolean p2, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsUcs2:Z

    .line 71
    iput-boolean p3, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsPacked:Z

    .line 72
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsYesNo:Z

    .line 74
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter "yesNoResponse"

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/ResponseData;-><init>()V

    .line 78
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsUcs2:Z

    .line 79
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsPacked:Z

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsYesNo:Z

    .line 82
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mYesNoResponse:Z

    .line 83
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 13
    .parameter "buf"

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 87
    if-nez p1, :cond_1

    .line 148
    :cond_0
    return-void

    .line 92
    :cond_1
    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v9

    or-int/lit16 v7, v9, 0x80

    .line 93
    .local v7, tag:I
    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 97
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsYesNo:Z

    if-eqz v9, :cond_4

    .line 98
    new-array v2, v11, [B

    .line 99
    .local v2, data:[B
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mYesNoResponse:Z

    if-eqz v9, :cond_3

    move v9, v11

    :goto_0
    aput-byte v9, v2, v12

    .line 131
    :goto_1
    array-length v9, v2

    add-int/lit8 v9, v9, 0x1

    const/16 v10, 0x7f

    if-le v9, v10, :cond_2

    .line 132
    const/16 v9, 0x81

    invoke-virtual {p1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 134
    :cond_2
    array-length v9, v2

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {p1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 137
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsUcs2:Z

    if-eqz v9, :cond_8

    .line 138
    const/16 v9, 0x8

    invoke-virtual {p1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 145
    :goto_2
    move-object v0, v2

    .local v0, arr$:[B
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_3
    if-ge v4, v5, :cond_0

    aget-byte v1, v0, v4

    .line 146
    .local v1, b:B
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 145
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .end local v0           #arr$:[B
    .end local v1           #b:B
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_3
    move v9, v12

    .line 99
    goto :goto_0

    .line 100
    .end local v2           #data:[B
    :cond_4
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_7

    .line 102
    :try_start_0
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsUcs2:Z

    if-eqz v9, :cond_5

    .line 103
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    const-string v10, "UTF-16BE"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .restart local v2       #data:[B
    goto :goto_1

    .line 104
    .end local v2           #data:[B
    :cond_5
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsPacked:Z

    if-eqz v9, :cond_6

    .line 105
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;)[B

    move-result-object v8

    .line 108
    .local v8, tempData:[B
    array-length v6, v8

    .line 110
    .local v6, size:I
    new-array v2, v6, [B

    .line 114
    .restart local v2       #data:[B
    const/4 v9, 0x1

    const/4 v10, 0x0

    sub-int v11, v6, v11

    invoke-static {v8, v9, v2, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 118
    .end local v2           #data:[B
    .end local v6           #size:I
    .end local v8           #tempData:[B
    :catch_0
    move-exception v9

    move-object v3, v9

    .line 119
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    new-array v2, v12, [B

    .line 122
    .restart local v2       #data:[B
    goto :goto_1

    .line 116
    .end local v2           #data:[B
    .end local v3           #e:Ljava/io/UnsupportedEncodingException;
    :cond_6
    :try_start_1
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .restart local v2       #data:[B
    goto :goto_1

    .line 120
    .end local v2           #data:[B
    :catch_1
    move-exception v9

    move-object v3, v9

    .line 121
    .local v3, e:Lcom/android/internal/telephony/EncodeException;
    new-array v2, v12, [B

    .line 122
    .restart local v2       #data:[B
    goto :goto_1

    .line 124
    .end local v2           #data:[B
    .end local v3           #e:Lcom/android/internal/telephony/EncodeException;
    :cond_7
    new-array v2, v12, [B

    .restart local v2       #data:[B
    goto :goto_1

    .line 139
    :cond_8
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsPacked:Z

    if-eqz v9, :cond_9

    .line 140
    invoke-virtual {p1, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 142
    :cond_9
    const/4 v9, 0x4

    invoke-virtual {p1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2
.end method
